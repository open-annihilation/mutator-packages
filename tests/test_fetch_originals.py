"""Checks of tools/fetch-originals' download bounds, against servers on 127.0.0.1.

The tool runs on the igi-server rows of originals.tsv with an empty --from-igi,
so every row is downloaded from a test server. No server sends an original:
each answers with a redirect, a body of the wrong length or nothing at all.
"""

from __future__ import annotations

import hashlib
import http.server
import importlib.machinery
import importlib.util
import subprocess
import sys
import tempfile
import threading
import unittest
from collections.abc import Callable
from pathlib import Path
from types import ModuleType

TOOL = Path(__file__).resolve().parent.parent / "tools" / "fetch-originals"
IGI_ROWS = 6

Behaviour = Callable[[http.server.BaseHTTPRequestHandler], None]


class Server:
    """A server on 127.0.0.1 that answers every GET with a behaviour and records each path."""

    def __init__(self, behave: Behaviour) -> None:
        self.paths: list[str] = []
        self.release = threading.Event()
        server = self

        class Handler(http.server.BaseHTTPRequestHandler):
            def do_GET(self) -> None:
                server.paths.append(self.path)
                try:
                    behave(self)
                except (BrokenPipeError, ConnectionResetError):
                    pass

            def log_message(self, *args: object) -> None:
                pass

        self.httpd = http.server.ThreadingHTTPServer(("127.0.0.1", 0), Handler)
        threading.Thread(target=self.httpd.serve_forever, daemon=True).start()

    @property
    def base(self) -> str:
        return f"http://127.0.0.1:{self.httpd.server_address[1]}/"

    def close(self) -> None:
        self.release.set()
        self.httpd.shutdown()
        self.httpd.server_close()


def load_tool() -> ModuleType:
    loader = importlib.machinery.SourceFileLoader("fetch_originals", str(TOOL))
    spec = importlib.util.spec_from_loader("fetch_originals", loader)
    assert spec is not None
    module = importlib.util.module_from_spec(spec)
    loader.exec_module(module)
    return module


class FetchOriginalsTest(unittest.TestCase):
    def setUp(self) -> None:
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.top = Path(temp.name).resolve()
        self.out = self.top / "out"
        (self.top / "empty-igi").mkdir()

    def serve(self, behave: Behaviour) -> Server:
        server = Server(behave)
        self.addCleanup(server.close)
        return server

    def fetch(self, base: str) -> subprocess.CompletedProcess[str]:
        command = [sys.executable, "-I", str(TOOL), "--set", "igi-server", "--from-igi", str(self.top / "empty-igi")]
        command += ["--out", str(self.out), "--igi-url-base", base]
        return subprocess.run(command, capture_output=True, text=True, timeout=120, check=False)

    def assert_failed_cleanly(self, proc: subprocess.CompletedProcess[str], reason: str) -> None:
        self.assertEqual(proc.returncode, 1, proc.stderr)
        self.assertNotIn("Traceback", proc.stderr)
        lines = [line for line in proc.stderr.splitlines() if ": download failed: http://127.0.0.1:" in line]
        self.assertEqual(len(lines), IGI_ROWS, proc.stderr)
        for line in lines:
            self.assertIn(reason, line)
        self.assertEqual([path for path in self.out.rglob("*") if path.is_file()], [])

    def test_redirect_to_another_port_is_refused(self) -> None:
        elsewhere = self.serve(lambda handler: handler.send_error(404))

        def redirect(handler: http.server.BaseHTTPRequestHandler) -> None:
            handler.send_response(302)
            handler.send_header("Location", elsewhere.base.rstrip("/") + handler.path)
            handler.send_header("Content-Length", "0")
            handler.end_headers()

        proc = self.fetch(self.serve(redirect).base)
        self.assert_failed_cleanly(proc, f"refused a redirect to {elsewhere.base}")
        self.assertEqual(elsewhere.paths, [])

    def test_long_body_is_cut_off(self) -> None:
        def endless(handler: http.server.BaseHTTPRequestHandler) -> None:
            handler.send_response(200)
            handler.end_headers()
            for _ in range(512):
                handler.wfile.write(b"\0" * 65536)

        self.assert_failed_cleanly(self.fetch(self.serve(endless).base), "the body is longer than")

    def test_announced_long_body_is_refused(self) -> None:
        def announced(handler: http.server.BaseHTTPRequestHandler) -> None:
            handler.send_response(200)
            handler.send_header("Content-Length", str(10**9))
            handler.end_headers()

        self.assert_failed_cleanly(self.fetch(self.serve(announced).base), "the server offers 1000000000 bytes")

    def test_short_body_is_a_failed_download(self) -> None:
        def short(handler: http.server.BaseHTTPRequestHandler) -> None:
            handler.send_response(200)
            handler.send_header("Content-Length", "1000")
            handler.end_headers()
            handler.wfile.write(b"\0" * 10)

        self.assert_failed_cleanly(self.fetch(self.serve(short).base), "the body ended after 10 of 1000 bytes")


class DownloadTest(unittest.TestCase):
    """download() itself, for what the command cannot reach quickly: a timeout and a good redirect."""

    def setUp(self) -> None:
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.dest = Path(temp.name).resolve() / "zips" / "a.zip"
        self.tool = load_tool()
        self.body = b"made-up archive bytes\n"
        sha256 = hashlib.sha256(self.body).hexdigest()
        self.row = self.tool.Row("tools/ta-mutation/igi-server/a.zip", len(self.body), sha256, "igi-server", "x")

    def serve(self, behave: Behaviour) -> Server:
        server = Server(behave)
        self.addCleanup(server.close)
        return server

    def test_timeout_is_a_failed_download(self) -> None:
        server: Server

        def stall(handler: http.server.BaseHTTPRequestHandler) -> None:
            handler.send_response(200)
            handler.send_header("Content-Length", str(len(self.body)))
            handler.end_headers()
            handler.wfile.write(self.body[:4])
            handler.wfile.flush()
            server.release.wait(10)

        server = self.serve(stall)
        self.tool.DOWNLOAD_TIMEOUT_S = 0.5
        reason = self.tool.download(self.row, self.dest, server.base)
        self.assertEqual(reason, "timed out")
        self.assertEqual(list(self.dest.parent.iterdir()), [])

    def test_redirect_on_the_same_host_is_followed(self) -> None:
        def moved(handler: http.server.BaseHTTPRequestHandler) -> None:
            if handler.path == "/a.zip":
                handler.send_response(302)
                handler.send_header("Location", "/moved/a.zip")
                handler.send_header("Content-Length", "0")
                handler.end_headers()
                return
            handler.send_response(200)
            handler.send_header("Content-Length", str(len(self.body)))
            handler.end_headers()
            handler.wfile.write(self.body)

        server = self.serve(moved)
        self.assertIsNone(self.tool.download(self.row, self.dest, server.base))
        self.assertEqual(self.dest.read_bytes(), self.body)
        self.assertEqual(server.paths, ["/a.zip", "/moved/a.zip"])
        self.assertEqual(list(self.dest.parent.glob("*.part")), [])


if __name__ == "__main__":
    unittest.main()
