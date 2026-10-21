# Warp Gate

Five packages replace the twelve Warp Gate mutators Immerman shipped. `warpgate` holds the six gate versions as one Commander arrives choice and follows 4.1 for every arrival. `wg-quickstart`, `wg-fortress`, `wg-early-warning` and `ai-scrouge` each require `warpgate`. Fortress's three tiers are one Gate energy number.

`originals/` and `build/` are gitignored. The commands below build the faithful imports and the curated packages under `build/warpgate/`. The gates, models, scripts, commander button art, Scrouge units and locator weapon are named in `from-originals.tsv` and taken from the originals by `tools/build-packages`. Nothing extracted is committed. L20 compares each row and writes the reports and the allowed-difference files. `_verify/` lists only `comparisons.tsv`.

## Originals

| Title | Source under `originals/` | Import | Package and option |
|---|---|---|---|
| * Warp Gate 3.1 * | `Mutators/{}Warpgate31.tam` | `warp-gate-3-1` | `warpgate`, arrival at-gate |
| * Warp Gate 4.0 * | `Mutators/{}Warpgate4_0.tam` | `warp-gate-4-0` | `warpgate`, arrival near (second comparison) |
| * Warp Gate 4.0, Targetting * | `Mutators/{}Warpgate4_0-Targetting.tam` | `warp-gate-4-0-targetting` | `warpgate`, arrival chosen |
| * Warp Gate 4.0, TwinComm * | `Mutators/{}Warpgate4_0-TwinComm.tam` | `warp-gate-4-0-twincomm` | `warpgate`, arrival near-twin |
| * Warp Gate 4.0, TwinTarget * | `Mutators/{}Warpgate4_0-TwinTarget.tam` | `warp-gate-4-0-twintarget` | `warpgate`, arrival chosen-twin |
| * Warp Gate 4.1 * | `Mutators/{}Warpgate4_1.tam` | `warp-gate-4-1` | `warpgate`, arrival near |
| WG - Quickstart | `Mutators/{}WG-Quickstart.tam` | `wg-quickstart` | `wg-quickstart` |
| WG - Fortress -- Frugal v.2 | `Mutators/{}WG-FortressFrugal2.tam` | `wg-fortress-frugal-v-2` | `wg-fortress`, income 1000 |
| WG - Fortress -- Moderate v.2 | `Mutators/{}WG-FortressModerate2.tam` | `wg-fortress-moderate-v-2` | `wg-fortress`, income 5000 |
| WG - Fortress -- Wealthy v.2 | `Mutators/{}WG-FortressWealthy2.tam` | `wg-fortress-wealthy-v-2` | `wg-fortress`, income 15000 |
| WG - Early Warning | `Mutators/{}WG-EarlyWarning.tam` | `wg-early-warning` | `wg-early-warning` |
| (AI) Scrouge | `Mutators/{}AI-Scrouge.tam` | `ai-scrouge` | `ai-scrouge` |

Each `.tam` has its `.sm` beside it, and the six gate versions and (AI) Scrouge have a `(1).ccx` beside the `.tam`. The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. Uberhack and the other mods named in the compatibility codes have no OA id, so those codes stay on the legacy record. Every one of these twelve records has compatibility `*`. Immerman wrote the gates and the three WG add-ons. (AI) Scrouge credits no one and shipped in his pack, so its author is Unknown.

`near` follows 4.1's files. 4.0 is a second comparison of that same arrival, not a second set of files.

## Where each part went

| Part | In the originals | Curated |
|---|---|---|
| Gate unit files, models and `scripts/*.cob` | each `(1).ccx` | `files/<arrival>/`, from that arrival's archive |
| `anims/ARMCOM_GADGET.gaf`, `anims/CORCOM_GADGET.gaf` | each archive, the same bytes | `files/<arrival>/`, from that arrival's archive |
| `weapons/TARGET_LOCATOR.tdf` | Targetting, TwinTarget | `files/chosen/`, `files/chosen-twin/` |
| `download/ARMGATE.tdf`, `download/CORGATE.tdf` | each archive | `menus:add` at the originals' places |
| `gamedata/sidedata.tdf` | 3.1, 4.0, TwinComm, Targetting and TwinTarget ship the file; 4.1 rewrites `commander` by rules | the units hook writes `ctx.sides`, 4.1's rule, for every arrival. No side is renamed and no prefix is swapped |
| `guis/LOUNGE2.GUI`, `guis/SKIRMISH.GUI`, `anims/skirmish.gaf`, `anims/lounge2.gaf` | the screens in 4.x, the art in every archive | left out |
| `textures/WG_Instructions.gaf` | Targetting, TwinTarget | left out |
| `scripts/*.bos` | each gate archive, and Scrouge | left out |
| Scrouge units, models and `.cob` scripts | `{}AI-Scrouge(1).ccx` | `ai-scrouge` `files/`, archive names kept |
| `Scripts/old/`, `Scrouge.txt`, Scrouge's download files | Scrouge | left out. The text of `Scrouge.txt` is in the description. The download lists are the menus hook |

The arrival archives are at-gate `{}Warpgate31(1).ccx`, near `{}Warpgate4_1(1).ccx`, near-twin `{}Warpgate4_0-TwinComm(1).ccx`, chosen `{}Warpgate4_0-Targetting(1).ccx`, chosen-twin `{}Warpgate4_0-TwinTarget(1).ccx`.

## Files shipped

Each hash is the SHA-256 of the archive entry. The build checks it and copies the bytes unchanged. The commanders' two button pictures are the same bytes in every archive, so those two hashes repeat. The other files are hashed from the archive the row names. `near` and 4.0 share gate unit files, models and scripts; TwinComm's scripts differ; Targetting and TwinTarget share the unit files, the models and the locator weapon, and their scripts differ.

### warpgate

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/at-gate/units/armgate.fbi` | `Mutators/{}Warpgate31(1).ccx` | `units/armgate.fbi` | `d5ff307c3e927eaa9176627612b5f88e0feec7b80fa5a8c500d61c3ed98628bf` |
| `files/at-gate/units/corgate.fbi` | `Mutators/{}Warpgate31(1).ccx` | `units/corgate.fbi` | `cc45c07db3acb4481560a89c5d50409e8332cd13c003fb1047d4daf681181a5d` |
| `files/at-gate/objects3D/armgate.3do` | `Mutators/{}Warpgate31(1).ccx` | `objects3D/armgate.3do` | `0707a98b6177bf2e29162621eb36e34e2d5e281bb5277be0d2fac410ce4038d5` |
| `files/at-gate/objects3D/corgate.3do` | `Mutators/{}Warpgate31(1).ccx` | `objects3D/corgate.3do` | `3a3f54b3a1eb0fe3473b41cbbb2e2a1c2e89bd408d179b7915799dd15f2b3e25` |
| `files/at-gate/scripts/armgate.cob` | `Mutators/{}Warpgate31(1).ccx` | `scripts/armgate.cob` | `56b41ef639f380161bc0591df52d4425c4664f457b50c43cfeb53f396f2fa96a` |
| `files/at-gate/scripts/corgate.cob` | `Mutators/{}Warpgate31(1).ccx` | `scripts/corgate.cob` | `dd4f99189d9d1b69727d88d005e6362b11847c1fa47e6d2c156f2c903e6d55eb` |
| `files/at-gate/anims/ARMCOM_GADGET.gaf` | `Mutators/{}Warpgate31(1).ccx` | `anims/ARMCOM_GADGET.gaf` | `a7139ec99cc4a9ba950baaafb256e28e56c181f2ce91071b4f0156307b30107f` |
| `files/at-gate/anims/CORCOM_GADGET.gaf` | `Mutators/{}Warpgate31(1).ccx` | `anims/CORCOM_GADGET.gaf` | `f49c89606c548c1bb8ca42806312bf6d0c3c273dd09fb4d3e30529aa7943d4b6` |
| `files/near/units/armgate.fbi` | `Mutators/{}Warpgate4_1(1).ccx` | `units/armgate.fbi` | `798f67ba2ac911dcadee1ad1608ed4591ef7e107eccce3cbe16971b70f2735b5` |
| `files/near/units/corgate.fbi` | `Mutators/{}Warpgate4_1(1).ccx` | `units/corgate.fbi` | `1e403daca634b207f9c929cf34f6d6dbb9eb660d3c6465bcd49509e2e79a78a4` |
| `files/near/objects3D/armgate.3do` | `Mutators/{}Warpgate4_1(1).ccx` | `objects3D/armgate.3do` | `0707a98b6177bf2e29162621eb36e34e2d5e281bb5277be0d2fac410ce4038d5` |
| `files/near/objects3D/corgate.3do` | `Mutators/{}Warpgate4_1(1).ccx` | `objects3D/corgate.3do` | `3a3f54b3a1eb0fe3473b41cbbb2e2a1c2e89bd408d179b7915799dd15f2b3e25` |
| `files/near/scripts/armgate.cob` | `Mutators/{}Warpgate4_1(1).ccx` | `scripts/armgate.cob` | `9dfa07ccca709269efe9678ce9697f1629b64ebe8f4df3d2a134aa6b1f68ccf3` |
| `files/near/scripts/corgate.cob` | `Mutators/{}Warpgate4_1(1).ccx` | `scripts/corgate.cob` | `b19874dc9050d94fe89dbd4f0f6d93dfadf5585e25f46d3c20b6930bea0f05be` |
| `files/near/anims/ARMCOM_GADGET.gaf` | `Mutators/{}Warpgate4_1(1).ccx` | `anims/ARMCOM_GADGET.gaf` | `a7139ec99cc4a9ba950baaafb256e28e56c181f2ce91071b4f0156307b30107f` |
| `files/near/anims/CORCOM_GADGET.gaf` | `Mutators/{}Warpgate4_1(1).ccx` | `anims/CORCOM_GADGET.gaf` | `f49c89606c548c1bb8ca42806312bf6d0c3c273dd09fb4d3e30529aa7943d4b6` |
| `files/near-twin/units/armgate.fbi` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `units/armgate.fbi` | `798f67ba2ac911dcadee1ad1608ed4591ef7e107eccce3cbe16971b70f2735b5` |
| `files/near-twin/units/corgate.fbi` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `units/corgate.fbi` | `1e403daca634b207f9c929cf34f6d6dbb9eb660d3c6465bcd49509e2e79a78a4` |
| `files/near-twin/objects3D/armgate.3do` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `objects3D/armgate.3do` | `0707a98b6177bf2e29162621eb36e34e2d5e281bb5277be0d2fac410ce4038d5` |
| `files/near-twin/objects3D/corgate.3do` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `objects3D/corgate.3do` | `3a3f54b3a1eb0fe3473b41cbbb2e2a1c2e89bd408d179b7915799dd15f2b3e25` |
| `files/near-twin/scripts/armgate.cob` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `scripts/armgate.cob` | `992467c6cccdceb7ae609a9d87bea9a5622751d34148b66bd2a0bfd5df5cb030` |
| `files/near-twin/scripts/corgate.cob` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `scripts/corgate.cob` | `394df343e2378d0455e75129f414509d0db6ee972ecf0b58216f26de9dbc6f9a` |
| `files/near-twin/anims/ARMCOM_GADGET.gaf` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `anims/ARMCOM_GADGET.gaf` | `a7139ec99cc4a9ba950baaafb256e28e56c181f2ce91071b4f0156307b30107f` |
| `files/near-twin/anims/CORCOM_GADGET.gaf` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `anims/CORCOM_GADGET.gaf` | `f49c89606c548c1bb8ca42806312bf6d0c3c273dd09fb4d3e30529aa7943d4b6` |
| `files/chosen/units/armgate.fbi` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `units/armgate.fbi` | `4dc62556c315463e8ceb00e37958a23df78ee271f17857df92ebef7aa368bc2a` |
| `files/chosen/units/corgate.fbi` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `units/corgate.fbi` | `c9fe1499f19d05e7bec4a423258f1ba9e757f81375f4a77ea303c071600cc62f` |
| `files/chosen/objects3D/armgate.3do` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `objects3D/armgate.3do` | `6190c1fbeeb295f0ff3d3b4803444ad495cd80564d8bd8a4115df669cfb537b1` |
| `files/chosen/objects3D/corgate.3do` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `objects3D/corgate.3do` | `c6300b8aecbc291b4eb7fe61876f862e20c35a444ea9f153840d23628bbfaa5a` |
| `files/chosen/scripts/armgate.cob` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `scripts/armgate.cob` | `f47045f0be312c47585f8417adc311ad8e1632fe5586037d84374685f21f7086` |
| `files/chosen/scripts/corgate.cob` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `scripts/corgate.cob` | `127fe2864edacfdcf623aa8bdef624844db992e9b7aa69667b5d3db8cdd7c3ae` |
| `files/chosen/anims/ARMCOM_GADGET.gaf` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `anims/ARMCOM_GADGET.gaf` | `a7139ec99cc4a9ba950baaafb256e28e56c181f2ce91071b4f0156307b30107f` |
| `files/chosen/anims/CORCOM_GADGET.gaf` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `anims/CORCOM_GADGET.gaf` | `f49c89606c548c1bb8ca42806312bf6d0c3c273dd09fb4d3e30529aa7943d4b6` |
| `files/chosen/weapons/TARGET_LOCATOR.tdf` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `weapons/TARGET_LOCATOR.tdf` | `3430cde637ded3ab421aca804528ed2a453c348786de5ca8350faa87d936e30a` |
| `files/chosen-twin/units/armgate.fbi` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `units/armgate.fbi` | `4dc62556c315463e8ceb00e37958a23df78ee271f17857df92ebef7aa368bc2a` |
| `files/chosen-twin/units/corgate.fbi` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `units/corgate.fbi` | `c9fe1499f19d05e7bec4a423258f1ba9e757f81375f4a77ea303c071600cc62f` |
| `files/chosen-twin/objects3D/armgate.3do` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `objects3D/armgate.3do` | `6190c1fbeeb295f0ff3d3b4803444ad495cd80564d8bd8a4115df669cfb537b1` |
| `files/chosen-twin/objects3D/corgate.3do` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `objects3D/corgate.3do` | `c6300b8aecbc291b4eb7fe61876f862e20c35a444ea9f153840d23628bbfaa5a` |
| `files/chosen-twin/scripts/armgate.cob` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `scripts/armgate.cob` | `90efa23bf65786bb609322a2d0072aed211304fa161a37f471d435576cb2d78e` |
| `files/chosen-twin/scripts/corgate.cob` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `scripts/corgate.cob` | `1e5dcbfe119ab01ed6a1cfad90442c78983046e6738c1259363ad747de93cf31` |
| `files/chosen-twin/anims/ARMCOM_GADGET.gaf` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `anims/ARMCOM_GADGET.gaf` | `a7139ec99cc4a9ba950baaafb256e28e56c181f2ce91071b4f0156307b30107f` |
| `files/chosen-twin/anims/CORCOM_GADGET.gaf` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `anims/CORCOM_GADGET.gaf` | `f49c89606c548c1bb8ca42806312bf6d0c3c273dd09fb4d3e30529aa7943d4b6` |
| `files/chosen-twin/weapons/TARGET_LOCATOR.tdf` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `weapons/TARGET_LOCATOR.tdf` | `3430cde637ded3ab421aca804528ed2a453c348786de5ca8350faa87d936e30a` |

### ai-scrouge

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/Units/scrouge.fbi` | `Mutators/{}AI-Scrouge(1).ccx` | `Units/scrouge.fbi` | `b9b9e07ebad1c7a6eaec23b96c2d58f0b65aad0f05221d2262928c258d80bad6` |
| `files/Units/scrgMex.fbi` | `Mutators/{}AI-Scrouge(1).ccx` | `Units/scrgMex.fbi` | `984c89baacb34a5548c1292fed94bb70bfd0f65307c7c6739342b98ee071d869` |
| `files/Objects3D/Scrouge.3do` | `Mutators/{}AI-Scrouge(1).ccx` | `Objects3D/Scrouge.3do` | `57f19e278b27f3b1c0606917eb30c0fe0261bdc0f1dc0d0b3b51c9664062f62e` |
| `files/Objects3D/scrgMex.3do` | `Mutators/{}AI-Scrouge(1).ccx` | `Objects3D/scrgMex.3do` | `caceec492ebdd096d4cd45f6c186cddba090a84bff2fa843c6a2217398d6da9c` |
| `files/Scripts/scrouge.cob` | `Mutators/{}AI-Scrouge(1).ccx` | `Scripts/scrouge.cob` | `a615d7b8bdc2c6dfadb0315b459d32dc32814e1a9941f4d4485fc1411086ecb3` |
| `files/Scripts/scrgmex.cob` | `Mutators/{}AI-Scrouge(1).ccx` | `Scripts/scrgmex.cob` | `1346f00481fb9ecd8f1a4548d13a021ca972a46195cb860affeee279bcc765c0` |

## What replaces the battle-room screens

The originals relabelled the battle room and the skirmish setup, and Targetting added an instruction plate. Those files are protected and are not shipped. The side buttons keep Arm's and Core's art, because the sides keep their names. With Game ends, losing the gate ends the game, and the description says so. The battle room's own mutator line names the package. The Commander arrives label and the description say what each arrival does, which is what the plate and the relabelled screens said.

The originals' download files put ARMCOM at `MENU=2` `BUTTON=0` and CORCOM at `BUTTON=1` on both gates. A player's page is `MENU` minus 1 and a slot is `BUTTON` plus 1, so those places are page 1 slot 1 and page 1 slot 2. Slot 0 is not a place the menus hook can name. The gates have no build page of their own, so the slots are not moved off an authored page.

## Files the imports left out

`tools/build-packages` writes each import report to `build/warpgate/_logs/import-<id>.txt`. The parenthetical is F02's rule name. Quickstart, the three Fortress tiers and Early Warning have no archive, so they left nothing out. "tags default to gameplay" is the import's tag note, not a left-out path.

Warp Gate 3.1 left out `anims/skirmish.gaf`, `anims/lounge2.gaf`, `anims/ARMCOM_GADGET.gaf` and `anims/CORCOM_GADGET.gaf`, each `interface-art`. It has no `guis/` files.

Warp Gate 4.0, TwinComm and 4.1 left out `guis/LOUNGE2.GUI` and `guis/SKIRMISH.GUI` (`menus-only`) and the same four `anims/` files (`interface-art`).

Targetting and TwinTarget left out those six and `textures/WG_Instructions.gaf` (`not-confirmed`).

(AI) Scrouge left out `Scrouge.txt` (`unknown-folder`). The import keeps `Scripts/old/`, the `.bos` sources, the download files and `gamedata/sidedata.tdf` where the archive has them: `scripts/` and `download/` are allowed, and `sidedata.tdf` is allowed. None of those kept paths is one F02 refuses. The curated packages still leave the script sources, `Scripts/old/`, the download files and `sidedata.tdf` out.

The commanders' button art is `interface-art` to the import, because the archives hold no ARMCOM or CORCOM unit file. The curated package ships `anims/ARMCOM_GADGET.gaf` and `anims/CORCOM_GADGET.gaf` for each arrival, and no other `_gadget` file.

## Differences from the originals

L20 writes the allowed files. The reasons below are the ones those files are for.

`warpgate-at-gate.allowed`, `warpgate-near.allowed`, `warpgate-near-twin.allowed`, `warpgate-chosen.allowed` and `warpgate-chosen-twin.allowed`: the curated package adds the two commander button pictures, which the import leaves out. The import keeps `scripts/*.bos`, which the game never reads. 3.1, 4.0, TwinComm, Targetting and TwinTarget also ship `gamedata/sidedata.tdf` whole. That file renames the sides NORM and EASY and swaps their name prefixes, and it carries the rest of the side data it was copied from. The curated package follows 4.1 and only changes the commander: the side whose commander is ARMCOM gets CORGATE, and the side whose commander is CORCOM gets ARMGATE. 4.1's own archive has no `sidedata.tdf`. `warpgate-near` is that version.

`warpgate-near-4.0.allowed`: `near` follows 4.1. Where 4.0's files or rules differ from 4.1's, that row records the difference. The unit files, models and scripts of those two archives match. 4.0's side file does not.

`warpgate-chosen-twin.allowed`: TwinTarget's rules are 4.0's and lack TwinComm's `Commander = 0`. The curated package sets the commander flag to 0 for both twin arrivals, so two commanders may exist. The assignment is a plain `set`, as TwinComm wrote it, not a lock.

`wg-quickstart` and `wg-early-warning` allow nothing. Quickstart's numbers are plain assignments. Early Warning locks radar and sonar distance at 13000 on both gates.

`wg-fortress.allowed`: the originals set `MakesEnergy` on every unit. No unit has that field, so the curated package leaves it out. The originals also wrote `[Group]` without asterisks to zero a negative `EnergyUse`. R01 reads that header as a group, so the import zeroes the same band, including a unit that writes no `EnergyUse` and therefore reads 0 (ARMUWFUS on the research's data). The band here is −1e11 to 0, which is the range the brief names.

The originals lock the gates' income and then set every unit's income and storage to 0. TA's lock kept the gates. A later change from the mutator that locked the field still applies here, so copying that order would zero the gates, including the income just locked. The curated rules zero every unit first and lock the gates after. The gates then keep the income the option names: the Normal gate at Gate energy and a fiftieth of that in metal, the Easy gate at six fifths of both, and both storages at a billion. Six fifths is 1.2 with no rounding. Frugal, Moderate and Wealthy are 1000, 5000 and 15000. 3000 is Frugal with Moderate. 7000 is all three. An import stacked the same way can still show the gates at 0, because its own file uses the old order. That difference is the order above. L20's allowed file, as that ticket names it, does not list the gates' income. Zeroing the gates to match the import would drop the income this package is specified to lock.

`ai-scrouge.allowed`: the import keeps `scripts/*.bos` and `Scripts/old/`, which the game never reads. The original menus list `SCRGGEO`, a unit the archive never shipped, and the curated menus do not.

The six Scrouge download files name no `MENU` and no `BUTTON`. The game reads both as 0, and a page is `MENU` minus 1, so those entries link no build page. The menus hook cannot write page 0. Its first page is 1, which stores `MENU=2`. Warp Gate already offers ARMCOM and CORCOM on page 1 slots 1 and 2, so each gate offers SCROUGE at slot 3. The Scrouge's own buttons follow Scrouge1, Scrouge2, Scrouge3, ScrougeArm and ScrougeCore, skipping `SCRGGEO`, six to a page from page 1 slot 1: SCRGMEX, ARMGUARD, CORPUN, ARMLLT, CORLLT, ARMHLT, CORHLT, ARMTL, CORTL, ARMRL, CORRL, ARMAP, ARMLAB, ARMSY, ARMVP, CORAP, CORLAB, CORSY, CORVP. The guardian is not a builder and offers nothing. L20's allowed file, as that ticket names it, covers the `SCRGGEO` entries and the script files. It does not name a page number. The files themselves have no page to copy.

A commander that is not the Scrouge is locked to side 10000. The selector is the unit name `SCROUGE`, compared without ASCII case, not the English name Scrouge Avatar. In TA: Mutation that lock averaged with Warp Gate's lock of side 0. A later mutator's change to a locked field is not written and is not averaged, so both this package and the import, stacked on `warpgate`, leave the commanders at side 0. The rule is still the lock.

## Why Fortress is one number

The three tiers were written to be combined, and combining them averages their production. Every tier, and every average of tiers, is a Normal-gate energy with metal at a fiftieth and the Easy gate at six fifths. One number from 1000 to 15000 in steps of 500 covers Frugal, Moderate, Wealthy and those averages. The default is Moderate, 5000.

## How the group header was read

The three Fortress rule files write `[Group]`, with `[Needs]` and `[Changes]` inside, and no asterisks. A body that holds those sections is a group whatever the header says, and `group_without_asterisks` is reported. That is the reading under which the files zero a negative energy use, which is what their authors wrote. The curated rule is that group.

## Computer players

Some computer profiles never build from the gate. If a match does not start on a gate, that profile is the likely cause. The chosen and chosen-twin arrivals are not usable by computer players: the Target gate builds where the player attack-orders the ground. `at-gate` puts the commander on the gate, and the gate is itself a commander. `near` puts the build point 8 to 30 units out, which is the gate script. The twin arrivals allow two commanders.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" warpgate
```

That prints `build: warpgate: 12 imports, 5 packages, 48 files from originals`. Pack and check from `build/warpgate`. Paths in `_verify/comparisons.tsv` are relative to that folder. A second `tools/build-packages --tool "$T" warpgate --out <empty folder>` matches `build/warpgate`.
