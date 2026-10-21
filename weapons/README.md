# Weapons

Fourteen packages replace fifteen TA: Mutation weapon-swap and build-menu mutators. SharedTech OTA and SharedTech UH are one package. The ten swaps are rules on the units the originals name. Better LLTs is the same kind of rule. Battleship Deck Lasers keeps the models and scripts as files and the stats as rules. Shared Tech and Low Tech edit build menus, so they fit any mod.

`originals/` and `build/` are gitignored. The commands below build the faithful imports and the curated packages under `build/weapons/`. L22 compares each row and records the reports, `big-llt.allowed` and `battleship-deck-lasers.allowed`.

## Originals

| Original | Author | Source under `originals/` | Import | Package | Comparison row |
|---|---|---|---|---|---|
| A Zipper | orion | `Mutators/{}A Zipper.tam` | `a-zipper` | `a-zipper` | `a-zipper` |
| A.K Weapon | Havoc | `Mutators/{}A.K Weapon.tam` | `a-k-weapon` | `ak-weapon` | `ak-weapon` |
| Armed Jeffy | Dominic Ascione | `Mutators/{}Armed Jeffy.tam` | `armed-jeffy` | `armed-jeffy` | `armed-jeffy` |
| Better L.L.T | Amorphis | `Mutators/{}Better L.L.T.tam` | `better-l-l-t` | `better-llt` | `better-llt` |
| EMG Fast | Dominic Ascione | `Mutators/{}EMG Fast.tam` | `emg-fast` | `emg-zipper` | `emg-zipper` |
| GAATK | Dominic | `Mutators/{}GAATK.tam` | `gaatk` | `gaatk` | `gaatk` |
| Hot zipper | MadBlast | `Mutators/{}Hot zipper.tam` | `hot-zipper` | `hot-zipper` | `hot-zipper` |
| Hotfoot | Dominic Ascione | `Mutators/{}Hotfoot.tam` | `hotfoot` | `hotfoot` | `hotfoot` |
| Super zeus | Dominic Ascione | `Mutators/{}Super zeus.tam` | `super-zeus` | `super-zeus` | `super-zeus` |
| Terrain Terror | Amorphis | `Mutators/{}Terrain Terror.tam` | `terrain-terror` | `terrain-terror` | `terrain-terror` |
| Better LLTs | Spunkmonkey | `Mutators/}{BigLLT.tam` (with `Mutators/}{BigLLT.ccx`) | `better-llts` | `big-llt` | `big-llt` |
| Battle Ship Deck Lasers | Wotan | `Mutators/}{BSDECKL.tam` (with `Mutators/}{BSDECKL.ccx`) | `battle-ship-deck-lasers` | `battleship-deck-lasers` | `battleship-deck-lasers` |
| SharedTech OTA | ATRCaptainKirk | `Mutators/}{SharedTechOTA.tam` (with `Mutators/}{SharedTechOTA.ccx`) | `sharedtech-ota` | `shared-tech` | `shared-tech` |
| SharedTech UH | ATRCaptainKirk | `Mutators/}{SharedTechUH.tam` (with `Mutators/}{SharedTechUH.ccx`) | `sharedtech-uh` | `shared-tech` | `shared-tech` |
| Low Tech | BULLETCLIP (ACUT) | `Mutators/}{LowTech.tam` (with `Mutators/}{LowTech.ccx`) | `low-tech` | `low-tech` | `low-tech` |

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. Uberhack and the other mods named in the compatibility codes have no OA id, so those codes stay on the legacy record.

## Conflicts

In TA: Mutation two string assignments to one field cancelled each other, so two swaps on one unit never worked together. The packages that set the same unit's weapon declare `conflicts-with` each other:

- `a-zipper`, `emg-zipper` and `hot-zipper` each set ARMFAST's weapon 1.
- `ak-weapon` and `gaatk` each set CORAK's weapon 1.
- `better-llt` and `big-llt` each set ARMLLT's weapon 1.

## Wrong compatibility tags

Three tags in the corpus do not match the weapons the originals need. The packages answer them as follows.

- Better LLTs says `TACC UH`. The laser is Uberhack's `ADV_DECKLASER`, which Core Contingency does not have. `big-llt` sets that weapon and does not guard it. On the base game the integrity check refuses the mutator and names it. The description says it needs Uberhack's deck laser. The import warns that `TACC` maps to `ta-3.1c` and that `UH` is not mapped to a mod.
- Battle Ship Deck Lasers says `*`. The Arm unit file sets `ARM_BATSAFT` and `ARM_BATSFORE`, which are Uberhack-only. `battleship-deck-lasers` does not set those fields, so the base game's `ARM_BATS` stays in both slots.
- Better L.L.T and Terrain Terror say `*`. The weapon is Core Contingency's `ARMSCORP_WEAPON`. Each package has a units hook: when `ctx.weapons` lacks that weapon, it calls `ctx.incompatible` and names the original.

## Files from the originals

`battleship-deck-lasers` names four runtime files in `from-originals.tsv`. The build checks each SHA-256 and copies the bytes unchanged. The `.bos` sources are not named: the game never reads them.

| Package path | Source | Entry | SHA-256 |
|---|---|---|---|
| `files/objects3d/armbats.3do` | `Mutators/}{BSDECKL.ccx` | `objects3d/armbats.3do` | `ba74d46536db75d664c238963deec8eb6cce8a08276a213ac7ab93e3329d84ab` |
| `files/objects3d/corbats.3do` | `Mutators/}{BSDECKL.ccx` | `objects3d/corbats.3do` | `1136af2b7883559a8f01ad27ca245f7b2d485ee194a93d0574d502291fbad7a7` |
| `files/scripts/ARMBATS.COB` | `Mutators/}{BSDECKL.ccx` | `scripts/ARMBATS.COB` | `a9f6dbc305afc40de04418c962503687b735f4a90261eabd5a60457b3f6a6320` |
| `files/scripts/corbats.cob` | `Mutators/}{BSDECKL.ccx` | `scripts/corbats.cob` | `0a3404ab63aebe158ac478434044bde3118d4f6e4c665fc3527460ceac6aa64e` |

The package adds `files` in the plan so the Files layer serves the models and scripts. `armbats.3do` and `ARMBATS.COB` change ARMBATS by that name, and `corbats.3do` and `corbats.cob` change CORBATS by that name. The description says so.

## Files the imports left out

P05 left no file out of the ten rule imports, Better LLTs or Battle Ship Deck Lasers. Those two hard imports keep the archive as one file. SharedTech OTA, SharedTech UH and Low Tech hold only GUI pages and button art. GUI pages change only through `menus` (F02), and button art in `anims/` other than a unit's `_gadget.gaf` is interface art, so P05 left every entry out. Each import keeps no archive file and changes nothing. `shared-tech` and `low-tech` therefore compare against no import.

From `build/weapons/_logs/import-sharedtech-ota.txt`, each path and F02's rule:

- `}{SharedTechOTA.ccx: anims/corcom5.gaf` (interface-art)
- `}{SharedTechOTA.ccx: anims/armcom5.gaf` (interface-art)
- `}{SharedTechOTA.ccx: guis/corcom5.gui` (menus-only)
- `}{SharedTechOTA.ccx: guis/armcom5.gui` (menus-only)

The log also says the mutator changes nothing, tags default to gameplay, and `TACC` maps to `ta-3.1c`.

From `build/weapons/_logs/import-sharedtech-uh.txt`:

- `}{SharedTechUH.ccx: anims/armcom5.gaf` (interface-art)
- `}{SharedTechUH.ccx: anims/corcom5.gaf` (interface-art)
- `}{SharedTechUH.ccx: guis/corcom5.gui` (menus-only)
- `}{SharedTechUH.ccx: guis/armcom5.gui` (menus-only)

The log also says the mutator changes nothing, tags default to gameplay, `UH` is not mapped to a mod, and no compatibility code maps to a mod.

From `build/weapons/_logs/import-low-tech.txt`:

- `}{LowTech.ccx: guis/armca3.gui` (menus-only)
- `}{LowTech.ccx: guis/armck3.gui` (menus-only)
- `}{LowTech.ccx: guis/armcs1.gui` (menus-only)
- `}{LowTech.ccx: guis/armcv3.gui` (menus-only)
- `}{LowTech.ccx: guis/corca3.gui` (menus-only)
- `}{LowTech.ccx: guis/corck3.gui` (menus-only)
- `}{LowTech.ccx: guis/corcs1.gui` (menus-only)
- `}{LowTech.ccx: guis/corcv3.gui` (menus-only)

The log also says the mutator changes nothing, tags default to gameplay, and `TACC` maps to `ta-3.1c`.

## Differences from the originals

L22 writes the allowed-differences files. The reasons those files will record:

- `big-llt.allowed`: Better LLTs replaces `units/ARMLLT.FBI` and `units/CORLLT.FBI`. The curated rules set only the archive's own stat changes. ARMLLT: `BuildCostEnergy` 1837, `BuildCostMetal` 331, `BuildTime` 8662, `MaxDamage` 1030, weapon 1 `ADV_DECKLASER`, `CanGuard` 1. CORLLT: `BuildCostEnergy` 2052, `BuildCostMetal` 334, `BuildTime` 8724, `MaxDamage` 1110, `SightDistance` 380, weapon 1 `ADV_DECKLASER`, `CanGuard` 1. Not carried, because they are Uberhack's: both files' `Category`, `BadTargetCategory` and `wpri_badtargetcategory`, and the name `LLT`. A whole unit file also carries every other field of the balance it was cut from. Those fields are not the mutator.
- `battleship-deck-lasers.allowed`: the archive replaces both battleship unit files and adds models, scripts and `.bos` sources. The curated package ships the two models and the two `.cob` scripts, and sets only these fields. ARMBATS: acceleration 0.01, brake 0.025, `MaxDamage` 8064, weapon 3 `ARM_LIGHTLASER`, `wspe_badtargetcategory` `ANTILASER`. CORBATS: acceleration 0.011, brake 0.02, `MaxDamage` 8364, weapon 1 `COR_BATS`, weapon 2 `CORE_BATSLASER`, weapon 3 `CORE_LIGHTLASER`, `wsec_badtargetcategory` and `wspe_badtargetcategory` `ANTILASER`. Not carried: both files' `Category` (Uberhack's); ARMBATS weapon 1 `ARM_BATSAFT` and weapon 2 `ARM_BATSFORE` (Uberhack-only; the base game's `ARM_BATS` stays in both slots); CORBATS `ExplodeAs` and `SelfDestructAs` `ATOMIC_BLASTSML`; the `.bos` sources; and every other field the unit files carry from the balance they were cut from.

`shared-tech` and `low-tech` have no import to compare. Shared Tech adds, on a new page, every factory (`builder` 1, `bmcode` 0) that another commander (`commander` 1, `bmcode` 1) offers and this one does not. It names no unit. The first button opens that page with `page = "new"`, and the rest fill the same page, which is what the originals' fifth page did. A button has no picture unless the factory has `_gadget.gaf` art. Low Tech greys eight buttons by the names the original greyed: ARMCA ARMAAP, ARMCK ARMALAB, ARMCS ARMASY, ARMCV ARMAVP, CORCA CORAAP, CORCK CORALAB, CORCS CORASY and CORCV CORAVP. The original replaced whole pages, so any other change to those pages was lost. Greying changes one button. Computer players still build level 2, as they did before.

The ten swaps and Better LLTs and the battleship stats name their units, as the originals do. A Zipper's two blocks are one rule. Super Zeus fires `COMMANDER_BLAST`, a death explosion used as a gun, as the original does.

## Not in this family

DRUH 00.11 is a whole mod, not a mutator. It is not packaged here.

## Build, pack and check

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" weapons
```

That prints `build: weapons: 15 imports, 14 packages, 4 files from originals`. Pack and check from `build/weapons`. Paths in `_verify/comparisons.tsv` are relative to `build/weapons`. A second `tools/build-packages --tool "$T" weapons --out <empty folder>` matches `build/weapons`.
