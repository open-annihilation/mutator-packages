"""Checks of tools/build-packages' refusals, on a made-up family and a fake oa-tool.

Each test copies the tool into a made-up repository in a temporary folder, so
nothing here reads the originals or writes into this repository.
"""

from __future__ import annotations

import hashlib
import shutil
import subprocess
import sys
import tempfile
import unittest
import zipfile
from pathlib import Path

TOOL = Path(__file__).resolve().parent.parent / "tools" / "build-packages"
CHECK = Path(__file__).resolve().parent.parent / "tools" / "check-comparisons"

# Imports name the folder after the source's stem (or --id); extract reads a zip entry.
FAKE_OA_TOOL = """
import sys
import zipfile
from pathlib import Path

args = sys.argv[1:]
if args[:2] == ["mutator", "import"]:
    source = Path(args[2])
    out = Path(args[args.index("--out") + 1])
    name = args[args.index("--id") + 1] if "--id" in args else source.stem.lower()
    (out / name).mkdir(parents=True)
    (out / name / "oamut.yaml").write_text("id: " + name + "\\n")
    print("imported " + name)
elif args[:1] == ["extract"]:
    with zipfile.ZipFile(args[1]) as archive:
        Path(args[3]).write_bytes(archive.read(args[2]))
else:
    sys.exit(2)
"""

ENTRY_BYTES = b"made-up unit file\n"


def tree(folder: Path) -> list[str]:
    return sorted(str(path.relative_to(folder)) for path in folder.rglob("*"))


class BuildPackagesTest(unittest.TestCase):
    def setUp(self) -> None:
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.top = Path(temp.name).resolve()
        self.repo = self.top / "repo"
        (self.repo / "tools").mkdir(parents=True)
        shutil.copy2(TOOL, self.repo / "tools" / "build-packages")
        shutil.copy2(CHECK, self.repo / "tools" / "check-comparisons")
        self.fake = self.top / "fake-oa-tool"
        self.fake.write_text(f"#!{sys.executable} -I\n{FAKE_OA_TOOL}", encoding="utf-8")
        self.fake.chmod(0o755)
        test = self.repo / "originals" / "Test"
        test.mkdir(parents=True)
        (test / "One.tam").write_text("one\n", encoding="utf-8")
        (test / "Two.tam").write_text("two\n", encoding="utf-8")
        with zipfile.ZipFile(test / "data.zip", "w") as archive:
            archive.writestr("units/a.fbi", ENTRY_BYTES)
        self.family = self.repo / "sample"
        self.family.mkdir()
        self.write_imports(["one\tTest/One.tam", "two\tTest/Two.tam"])
        package = self.family / "pkg"
        package.mkdir()
        (package / "oamut.yaml").write_text("oamut: 1\nid: pkg\n", encoding="utf-8")
        (package / "mutator.lua").write_text("return {}\n", encoding="utf-8")
        self.write_files(hashlib.sha256(ENTRY_BYTES).hexdigest())
        (self.family / "_verify").mkdir()
        (self.family / "_verify" / "comparisons.tsv").write_text(
            "row\tcurated\timports\tallowed\npkg\t./pkg\t_imports/one\t-\n", encoding="utf-8"
        )

    def write_imports(self, rows: list[str]) -> None:
        text = "import\tsource\n" + "".join(row + "\n" for row in rows)
        (self.family / "_imports.tsv").write_text(text, encoding="utf-8")

    def write_files(self, sha256: str) -> None:
        text = f"path\tsource\tentry\tsha256\nfiles/units/a.fbi\tTest/data.zip\tunits/a.fbi\t{sha256}\n"
        (self.family / "pkg" / "from-originals.tsv").write_text(text, encoding="utf-8")

    def build(self, *args: str, cwd: Path | None = None) -> subprocess.CompletedProcess[str]:
        command = [sys.executable, "-I", str(self.repo / "tools" / "build-packages"), "--tool", str(self.fake)]
        return subprocess.run(
            [*command, *args], cwd=cwd or self.repo, capture_output=True, text=True, timeout=60, check=False
        )

    def test_default_build_is_marked_and_replaced(self) -> None:
        for _ in range(2):
            proc = self.build("sample")
            self.assertEqual(proc.returncode, 0, proc.stderr)
            self.assertIn("build: sample: 2 imports, 1 packages, 1 files from originals", proc.stdout)
        built = self.repo / "build" / "sample"
        self.assertTrue((built / ".build-packages").is_file())
        self.assertEqual((built / "pkg" / "files" / "units" / "a.fbi").read_bytes(), ENTRY_BYTES)
        self.assertEqual(sorted(path.name for path in (built / "_imports").iterdir()), ["one", "two"])
        # No temporary folder is left beside the build.
        self.assertEqual([path.name for path in (self.repo / "build").iterdir()], ["sample"])

    def test_out_in_or_above_the_repository_is_refused(self) -> None:
        before = tree(self.top)
        for out in ("", ".", "sample", "sample/pkg", "tools", "originals", "..", str(self.top.parent)):
            with self.subTest(out=out):
                proc = self.build("--out", out, "sample")
                self.assertEqual(proc.returncode, 2, proc.stderr)
                named = "--out is empty" if out == "" else str((self.repo / out).resolve())
                self.assertIn(named, proc.stderr)
                self.assertEqual(tree(self.top), before)

    def test_out_inside_originals_is_refused(self) -> None:
        originals = self.top / "elsewhere-originals"
        shutil.copytree(self.repo / "originals", originals)
        proc = self.build("--originals", str(originals), "--out", str(originals / "build"), "sample")
        self.assertEqual(proc.returncode, 2, proc.stderr)
        self.assertIn("inside --originals", proc.stderr)
        self.assertFalse((originals / "build").exists())

    def test_out_outside_the_repository_works(self) -> None:
        out = self.top / "again"
        proc = self.build("--out", str(out), "sample")
        self.assertEqual(proc.returncode, 0, proc.stderr)
        self.assertTrue((out / "sample" / ".build-packages").is_file())

    def test_unmarked_folder_is_not_replaced(self) -> None:
        out = self.top / "again"
        (out / "sample").mkdir(parents=True)
        (out / "sample" / "keep.txt").write_text("keep\n", encoding="utf-8")
        proc = self.build("--out", str(out), "sample")
        self.assertEqual(proc.returncode, 2, proc.stderr)
        self.assertIn(str(out / "sample"), proc.stderr)
        self.assertEqual(tree(out), ["sample", "sample/keep.txt"])

    def test_repeated_import_is_refused(self) -> None:
        self.write_imports(["one\tTest/One.tam", "two\tTest/Two.tam", "one\tTest/One.tam"])
        proc = self.build("sample")
        self.assertEqual(proc.returncode, 1, proc.stderr)
        self.assertIn("lines 2 and 4 both name import one", proc.stderr)
        self.assertFalse((self.repo / "build").exists())

    def test_failed_family_leaves_no_build(self) -> None:
        self.assertEqual(self.build("sample").returncode, 0)
        self.write_files("0" * 64)
        proc = self.build("sample")
        self.assertEqual(proc.returncode, 1, proc.stderr)
        self.assertIn("SHA-256 mismatch", proc.stderr)
        self.assertEqual(tree(self.repo / "build"), [])


if __name__ == "__main__":
    unittest.main()
