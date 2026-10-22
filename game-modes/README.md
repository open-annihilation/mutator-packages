# Game modes

This group holds Warp Gate and the add-ons that require it, including the computer player Scrouge. Five packages. Each original's author stays in the tables here and in the package's manifest.

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
| Scrouge units, models and `.cob` scripts | `{}AI-Scrouge(1).ccx` | `ai-scrouge` `files/`, archive names kept |

The arrival archives are at-gate `{}Warpgate31(1).ccx`, near `{}Warpgate4_1(1).ccx`, near-twin `{}Warpgate4_0-TwinComm(1).ccx`, chosen `{}Warpgate4_0-Targetting(1).ccx`, chosen-twin `{}Warpgate4_0-TwinTarget(1).ccx`. The gates replace 3.1c's Galactic Gates, as the originals' archives did. The locator weapon keeps the id its file requests, and the engine moves that id when another weapon already holds it.

## Files

Each hash is the SHA-256 of the archive entry. The file under `files/` is those bytes, stored once. The plan adds `files/common`, then `files/plain` or `files/target`, then for near-twin `files/near`, then `files/<arrival>`. A later folder replaces a path an earlier one added. `near` and 4.0 share gate unit files, models and scripts; TwinComm's scripts differ; Targetting and TwinTarget share the unit files, the models and the locator weapon, and their scripts differ.

### warpgate

`files/common` is read by at-gate, near, near-twin, chosen and chosen-twin.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/common/anims/ARMCOM_GADGET.gaf` | `Mutators/{}Warpgate31(1).ccx` | `anims/ARMCOM_GADGET.gaf` | `a7139ec99cc4a9ba950baaafb256e28e56c181f2ce91071b4f0156307b30107f` |
| `files/common/anims/CORCOM_GADGET.gaf` | `Mutators/{}Warpgate31(1).ccx` | `anims/CORCOM_GADGET.gaf` | `f49c89606c548c1bb8ca42806312bf6d0c3c273dd09fb4d3e30529aa7943d4b6` |

`files/plain` is read by at-gate, near and near-twin. The same model bytes are in 4.1 and TwinComm.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/plain/objects3D/armgate.3do` | `Mutators/{}Warpgate31(1).ccx` | `objects3D/armgate.3do` | `0707a98b6177bf2e29162621eb36e34e2d5e281bb5277be0d2fac410ce4038d5` |
| `files/plain/objects3D/corgate.3do` | `Mutators/{}Warpgate31(1).ccx` | `objects3D/corgate.3do` | `3a3f54b3a1eb0fe3473b41cbbb2e2a1c2e89bd408d179b7915799dd15f2b3e25` |

`files/target` is read by chosen and chosen-twin. TwinTarget holds the same unit files, models and locator weapon.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/target/units/armgate.fbi` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `units/armgate.fbi` | `4dc62556c315463e8ceb00e37958a23df78ee271f17857df92ebef7aa368bc2a` |
| `files/target/units/corgate.fbi` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `units/corgate.fbi` | `c9fe1499f19d05e7bec4a423258f1ba9e757f81375f4a77ea303c071600cc62f` |
| `files/target/objects3D/armgate.3do` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `objects3D/armgate.3do` | `6190c1fbeeb295f0ff3d3b4803444ad495cd80564d8bd8a4115df669cfb537b1` |
| `files/target/objects3D/corgate.3do` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `objects3D/corgate.3do` | `c6300b8aecbc291b4eb7fe61876f862e20c35a444ea9f153840d23628bbfaa5a` |
| `files/target/weapons/TARGET_LOCATOR.tdf` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `weapons/TARGET_LOCATOR.tdf` | `3430cde637ded3ab421aca804528ed2a453c348786de5ca8350faa87d936e30a` |

`files/near` is read by near and near-twin. near-twin replaces the scripts with `files/near-twin`. TwinComm's unit files match 4.1.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/near/units/armgate.fbi` | `Mutators/{}Warpgate4_1(1).ccx` | `units/armgate.fbi` | `798f67ba2ac911dcadee1ad1608ed4591ef7e107eccce3cbe16971b70f2735b5` |
| `files/near/units/corgate.fbi` | `Mutators/{}Warpgate4_1(1).ccx` | `units/corgate.fbi` | `1e403daca634b207f9c929cf34f6d6dbb9eb660d3c6465bcd49509e2e79a78a4` |
| `files/near/scripts/armgate.cob` | `Mutators/{}Warpgate4_1(1).ccx` | `scripts/armgate.cob` | `9dfa07ccca709269efe9678ce9697f1629b64ebe8f4df3d2a134aa6b1f68ccf3` |
| `files/near/scripts/corgate.cob` | `Mutators/{}Warpgate4_1(1).ccx` | `scripts/corgate.cob` | `b19874dc9050d94fe89dbd4f0f6d93dfadf5585e25f46d3c20b6930bea0f05be` |

`files/at-gate` is read by at-gate.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/at-gate/units/armgate.fbi` | `Mutators/{}Warpgate31(1).ccx` | `units/armgate.fbi` | `d5ff307c3e927eaa9176627612b5f88e0feec7b80fa5a8c500d61c3ed98628bf` |
| `files/at-gate/units/corgate.fbi` | `Mutators/{}Warpgate31(1).ccx` | `units/corgate.fbi` | `cc45c07db3acb4481560a89c5d50409e8332cd13c003fb1047d4daf681181a5d` |
| `files/at-gate/scripts/armgate.cob` | `Mutators/{}Warpgate31(1).ccx` | `scripts/armgate.cob` | `56b41ef639f380161bc0591df52d4425c4664f457b50c43cfeb53f396f2fa96a` |
| `files/at-gate/scripts/corgate.cob` | `Mutators/{}Warpgate31(1).ccx` | `scripts/corgate.cob` | `dd4f99189d9d1b69727d88d005e6362b11847c1fa47e6d2c156f2c903e6d55eb` |

`files/near-twin` is read by near-twin.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/near-twin/scripts/armgate.cob` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `scripts/armgate.cob` | `992467c6cccdceb7ae609a9d87bea9a5622751d34148b66bd2a0bfd5df5cb030` |
| `files/near-twin/scripts/corgate.cob` | `Mutators/{}Warpgate4_0-TwinComm(1).ccx` | `scripts/corgate.cob` | `394df343e2378d0455e75129f414509d0db6ee972ecf0b58216f26de9dbc6f9a` |

`files/chosen` is read by chosen.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/chosen/scripts/armgate.cob` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `scripts/armgate.cob` | `f47045f0be312c47585f8417adc311ad8e1632fe5586037d84374685f21f7086` |
| `files/chosen/scripts/corgate.cob` | `Mutators/{}Warpgate4_0-Targetting(1).ccx` | `scripts/corgate.cob` | `127fe2864edacfdcf623aa8bdef624844db992e9b7aa69667b5d3db8cdd7c3ae` |

`files/chosen-twin` is read by chosen-twin.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/chosen-twin/scripts/armgate.cob` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `scripts/armgate.cob` | `90efa23bf65786bb609322a2d0072aed211304fa161a37f471d435576cb2d78e` |
| `files/chosen-twin/scripts/corgate.cob` | `Mutators/{}Warpgate4_0-TwinTarget(1).ccx` | `scripts/corgate.cob` | `1e5dcbfe119ab01ed6a1cfad90442c78983046e6738c1259363ad747de93cf31` |

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

Each row's report is `_verify/<row>.3.1c.txt`, byte for byte what `oa-tool mutator diff` printed for the curated specs. The comparisons passed with only the lines in the allowed files. No curated package changed.

`warpgate-at-gate.allowed`, `warpgate-near.allowed`, `warpgate-near-4.0.allowed`, `warpgate-near-twin.allowed`, `warpgate-chosen.allowed` and `warpgate-chosen-twin.allowed` each allow the two commander button pictures the import leaves out, spelled as the comparison prints them:

```
left only file added anims/armcom_gadget.gaf a7139ec99cc4a9ba950baaafb256e28e56c181f2ce91071b4f0156307b30107f
left only file added anims/corcom_gadget.gaf f49c89606c548c1bb8ca42806312bf6d0c3c273dd09fb4d3e30529aa7943d4b6
```

They also allow the script sources the game never reads. 3.1c's campaign gates already hold `scripts/armgate.bos` and `scripts/corgate.bos`, so the comparison prints a replacement: `right only file replaced scripts/*.bos *`.

`warpgate-at-gate.allowed`, `warpgate-near-4.0.allowed` and `warpgate-near-twin.allowed` also allow the side rename. 3.1, 4.0 and TwinComm ship `gamedata/sidedata.tdf` and rename the sides NORM and EASY and swap their name prefixes. The curated package follows 4.1 and keeps the names. Each of those files has one `right only field gamedata/sidedata.tdf [side0] name: ARM -> NORM`, one `nameprefix: ARM -> COR`, one `[side1] name: CORE -> EASY` and one `nameprefix: COR -> ARM`. The comparison shows no other `sidedata.tdf` field on those rows. Targetting and TwinTarget change only the commander lines, which the curated package matches, so `warpgate-chosen.allowed` and `warpgate-chosen-twin.allowed` have no side-name line. 4.1 ships no `sidedata.tdf`. `warpgate-near.allowed` has none either.

`warpgate-near-4.0.allowed`: `near` follows 4.1. The comparison against 4.0 shows the button art, the script sources and the side rename, and no other field. The unit files, models and compiled scripts of those two archives match.

`warpgate-chosen-twin.allowed` also allows TwinTarget's missing commander clear. TwinTarget's rules are 4.0's and lack TwinComm's `Commander = 0`. The curated package sets the commander flag to 0 for both twin arrivals, so two commanders may exist. The lines are `left only field units/armcom.fbi [unitinfo] commander: 1 -> 0` and the same for `corcom`. The assignment is a plain `set`, as TwinComm wrote it.

`wg-quickstart` and `wg-early-warning` allow nothing. Both comparisons print `0 differences`. Quickstart's numbers are plain assignments. Early Warning locks radar and sonar distance at 13000 on both gates.

`wg-fortress.allowed` is the file for every Fortress row. It names two differences.

The originals set `MakesEnergy` on every unit. No unit has that field, so the curated package leaves it out: `right only field units/*.fbi [unitinfo] makesenergy: (absent) -> 0`. That line matches the 278 units the comparison shows.

The originals lock the gates and then set every unit to 0. In TA: Mutation `^` held against that (captures `WG-FortressFrugal2+Warpgate4_1`: CORGATE `energymake=1000`, `metalmake=20`, storage `1e+009`; Frugal with Moderate 3000/60 and 3600/72). In OA a mutator's later write passes its own lock, so the import leaves the gates at 0. The comparison shows `right only field units/armgate.fbi [unitinfo] energymake: (absent) -> 0` and the same for `metalmake`, and the same two fields on `units/corgate.fbi`. The curated package zeroes first and locks after, so the gates keep their income. The file names `left only field units/armgate.fbi [unitinfo] energymake: (absent) -> *` and the same for `metalmake`, `energystorage: 0 -> 1000000000` and `metalstorage: 0 -> 1000000000`, and the same four fields on `units/corgate.fbi`. The `*` is the income, which depends on Gate energy. Frugal, Moderate and Wealthy are 1000, 5000 and 15000 on the Normal gate. The Easy gate is six fifths of that, in whole numbers. 3000 is Frugal with Moderate. 7000 is all three.

The import's own report already changes a negative `EnergyUse` (`armsolar` and `corsolar` from −20 to 0, and `armuwfus` from absent to 0). R01 reads `[Group]` as a group, so the import zeroes the same band as this package. The comparison shows no `energyuse` line, and `wg-fortress.allowed` names none. TA: Mutation itself read the header as a unit named GROUP and changed nothing, so its solar collectors kept producing. This package still zeroes them. That fix is against TA: Mutation's reading, and it is not a difference against the import.

`ai-scrouge.allowed` names three differences.

The import keeps `scripts/*.bos` and `Scripts/old/`, which the game never reads: `right only file added scripts/*.bos *` and `right only file added scripts/old/* *`.

The originals' entries give no MENU or BUTTON, which the game reads as page 0, a page `menus:add` cannot name. The curated entries take the first free slots. The tool prints a menu as builder, MENU, BUTTON and unit. Warp Gate already offers ARMCOM and CORCOM at MENU 2 BUTTON 0 and BUTTON 1, so each gate offers SCROUGE at MENU 2 BUTTON 2: `left only menu added ARMGATE 2 2 SCROUGE` and the same for `CORGATE`. The Scrouge's own buttons follow Scrouge1, Scrouge2, Scrouge3, ScrougeArm and ScrougeCore, skipping `SCRGGEO`, six to a page from MENU 2 BUTTON 0. The file names each of those 19 places, from `left only menu added SCROUGE 2 0 SCRGMEX` through `left only menu added SCROUGE 5 0 CORVP`. The import's places are all MENU 0 BUTTON 0, and the file names each `right only menu added` line. The comparison shows no line naming `SCRGGEO`. The download field that names it is dropped when menus are compared by entry, and a unit the archive never shipped is not a menu entry. The curated menus do not offer it, so the file has no `SCRGGEO` pattern.

The import leaves ARMCOM and CORCOM at side 0, and it leaves the Scrouge's records at the sides they ship. The file names `right only field units/armcom.fbi [unitinfo] side: ARM -> 0`, the same for `corcom` with `CORE -> 0`, `right only field units/scrouge.fbi [unitinfo] side: (absent) -> SCROUGE` and `scrgmex` with `-> CORE`. This package locks SCROUGE and SCRGMEX at side 0, and its units hook writes side 10000 on units with build code 1 and metal extraction 0.001 other than the Scrouge. The twin arrivals clear the commander flag, so the hook does not select on that flag. The file names `left only field units/armcom.fbi [unitinfo] side: ARM -> 10000`, the same for `corcom` with `CORE -> 10000`, and `left only field units/scrouge.fbi [unitinfo] side: (absent) -> 0` and the same for `scrgmex`. The Scrouge keeps its own build time of 1 and metal extraction of 0.002, because Warp Gate's rules run before those records exist. Those two fields match the import.

## Why Fortress is one number

The three tiers were written to be combined, and combining them averages their production. Every tier, and every average of tiers, is a Normal-gate energy with metal at a fiftieth and the Easy gate at six fifths. One number from 1000 to 15000 in steps of 500 covers Frugal, Moderate, Wealthy and those averages. The default is Moderate, 5000.

## How the group header was read

The three Fortress rule files write `[Group]`, with `[Needs]` and `[Changes]` inside, and no asterisks. A body that holds those sections is a group whatever the header says, and `group_without_asterisks` is reported. That is the reading under which the files zero a negative energy use, which is what their authors wrote. The curated rule is that group. TA: Mutation itself read the header as a unit named GROUP and changed nothing, so its solar collectors kept producing 20 energy (the mutators reference, answer 1). This package zeroes them. That is a fix.

## Computer players

Some computer profiles never build from the gate. If a match does not start on a gate, that profile is the likely cause. With a chosen arrival, a computer player on Arm's side never gets a commander: the Target gate builds only where a player attack-orders. On Core's side the Random gate works for a computer. `at-gate` puts the commander on the gate, and the gate is itself a commander. `near` puts the build point 8 to 30 units out, which is the gate script. The twin arrivals allow two commanders.

## Notes from the families these packages came from

These sentences are the old families' own openings. The package counts in them are those families', and a folder they name is the one this grouping replaced.

### Warp Gate

Five packages replace the twelve Warp Gate mutators Immerman shipped. `warpgate` holds the six gate versions as one Commander arrives choice and follows 4.1 for every arrival. `wg-quickstart`, `wg-fortress`, `wg-early-warning` and `ai-scrouge` each require `warpgate`. Fortress's three tiers are one Gate energy number.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" game-modes
```

That prints `build: game-modes: 12 imports, 5 packages`. Pack and check from `build/game-modes`. Paths in `_verify/comparisons.tsv` are relative to that folder. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
