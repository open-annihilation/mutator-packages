# Weapons

This group holds the mutators that change weapons: swaps, damage, range, reload, area and tolerance, and the single-unit weapon tweaks. Twenty-two packages. Each original's author stays in the tables here and in the package's manifest.

## The fourteen originals

| Catalogue | Original | Author | Source | Import | Package |
|---|---|---|---|---|---|
| 23 | FasTA | ATRCaptainKirk | `Mutators/{}FasTA.tam` | `fasta` | `fasta` |
| 13 | Close Encounters | Immerman | `Mutators/{}CloseEncounters.tam` | `close-encounters` | `close-encounters` |

Catalogue numbers are the rows in the legacy catalogue, section 5.1, and section 5.3 for Regeneration. Each package replaces that one original. The comparison of the same name is in `_verify/comparisons.tsv`: the curated package on the left, its import on the right.

## Differences from the originals

`fasta.allowed` is the reload field. The original named a field no weapon has (`reload`); the curated version halves `reloadtime`. The file allows `left only field weapons/* reloadtime: *` and nothing else. The other weapon factors are the original's, including damage through `<AllDepth2>`.

Faster Sumo keeps the original absolute values, top speed 5 and turn rate 666, about fifteen times 3.1c's 0.34. The original's two blocks on CORSUMO are one rule. The comparison allows no difference, because the values are the same. Those two absolutes, and Faster Stumpy/Raiders' 1.6, are the only absolute speeds in this family.

MAC's Maneuverable Boats clamp turn rate at 29900. On 3.1c the fastest boat turns at 911, so four times that rate never reaches the clamp. The curated rule uses the same clamp for every side. The Arm and Core rows allow no other difference.

Hypermobile Builders 3x mentions a cap in a comment and never applies it. The curated rule applies none. Close Encounters and Tactical Strike keep every factor and clamp as written, including 0.333333333, 0.6666666666, 0.66666666, 0.83 and 2.0. Hypermobility 2x, Hypermobile Commanders 3x, Slower Units, 1.75 Speed Contruction KBots and Maneuverable Boats keep the original factors.

## Originals

| Title | Author | Source under `originals/` | Import | Package | Comparison rows |
|---|---|---|---|---|---|
| Hover Craft Fix | Davicius / Total Dave | `Mutators/{}HoverFix.tam` | `hover-craft-fix` | not converted | — |
| Double Ranges | ATRCaptainKirk | `S-Mutators/DoubleRanges_mutator.zip` | `double-ranges` | `double-ranges` | `double-ranges` |
| Double Area of Effect | ATRCaptainKirk | `S-Mutators/DoubleAoE_mutator.zip` | `double-area-of-effect` | `double-aoe` | `double-aoe` |
| Double Reload Times | ATRCaptainKirk | `S-Mutators/DoubleReloadTimes_mutator.zip` | `double-reload-times` | `double-reload` | `double-reload` |
| Weapon Tolerance | uncredited | `Mutators/}{Tolerance.tam` with `Mutators/}{Tolerance.ccx` | `weapon-tolerance` | `weapon-tolerance` | `weapon-tolerance` (no import to compare) |
| Vibrant Colors | Immerman | `Mutators/}{VibrantColors.tam` with `Mutators/}{VibrantColors.ccx` | `vibrant-colors` | not converted | — |

Cloak distance 5 is what CloakMod v1.0 and +NowISee gave together. Cloak cost 2 is what CloakMod v1.0 and Expen$ive gave together. The option labels are Cloak distance and Cloak cost.

## Not converted

Hover Craft Fix is kept as an import and has no curated package. It sets `TEDClass` to Hover on mobile hovercraft other than ARMAMPH. Open Annihilation does not read `TEDClass`, so the change does nothing. An AI class for hovercraft is later engine work. The import is kept for the record.

Vibrant Colors is kept as an import and has no curated package. Its only file replaces `palettes/PALETTE.pal`. Palettes are read once per run and protected by Decision 4, so a mutator may not replace one. An engine colour filter is the better route. The import leaves the palette out and changes nothing. `build/removals/_logs/import-vibrant-colors.txt` records P05's warning:

```
left out }{VibrantColors.ccx: palettes/PALETTE.pal (read-once)
the mutator changes nothing
```

## Differences from the originals

A unit removed with `remove()` and a unit the import removes with a blank copyright line compare as one drop, with their menu entries. A unit only one side drops keeps its hidden unit file and its build button. No curated package writes a copyright line or a version.

CloakMod's twenty-two groups are one function. Every unit starts cloaked. The cloak band comes from the metal cost, and a missing metal cost reads as 0, so ARMFMKR and CORFMKR fall in the first band: 0 to 99 gives 1, 100 to 499 gives 2, 500 to 1999 gives 3, 2000 to 9999 gives 4, and anything else gives 5. Cloak cost is the band times the cost option, and cloak cost while moving is twice that. A mobile unit's cloak distance comes from its depth: 1 or 2 gives 50, 3 gives 70, 4 gives 100, 5 gives 140, and anything else gives 200. Every unit that has a cloak distance, set here or its own, is then multiplied by the distance option. The original's energy bands and width bands are left out. TA: Mutation averaged the two energy values, it did not overwrite them, so ARMCOM got a cloak cost of 4.5 and a moving cost of 9. Open Annihilation runs rules in sequence (Q63), so the later block replaces the earlier one and this package gives 5 and 10, matching the faithful import. Expen$ive's rules multiply by 2. Its text said 5.

Weapon Tolerance's 65 Uberhack weapon files are one rule. A weapon gains tolerance 500 when some unit fires it from weapon 1, weapon 2 or weapon 3 and it does not already have a tolerance. Death blasts, mine blasts, meteors and the like are not one of those three weapons, so they keep none. The original's Core Scorpion file replaced the weapon and still left CORSCORP_WEAPON without a tolerance. CORSCORP fires that weapon, and 3.1c gives it no tolerance, so this rule sets 500. Against the original's files on 3.1c, the rule also gives 500 to ARMAIR2AIRLASER, CORAIR2AIRLASER and ARM_BATS, which the Uberhack set has no section for, and to CORSCORP_WEAPON. The original gave CORBOMB and CORADVBOMB 500 and left ARMBOMB and ARMADVBOMB without one; this rule gives all four 500. There is no field comparison with the import: the Uberhack files carry that balance in every other field. `weapon-tolerance`'s report is the check.

Double Reload Times matches its import, including a reload time spelled with a leading dot. On 3.1c that is 28 weapons, and both sides double them, now that the engine reads that spelling (R07).

Double LOS keeps the sight and radar factors and ships `files/gamedata/los.tdf` from `Mutators/{}DoubleLOS(1).ccx`, entry `gamedata/los.tdf`, SHA-256 `47f7079821ce0d0123d844d47343ad82483a48f13b70eed7c2877d9228e5de6a`. The table holds 32 sight entries where 3.1c holds 9, so doubled sight is not cut short.

AI Tag Remover drops `ai_weight` and `ai_limit` when the field is present. The original looked for the text "we" and "li". On this game every unit that has either field holds that text, so the same units match.

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

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. Uberhack and the other mods named in the compatibility codes have no OA id, so those codes stay on the legacy record.

## Conflicts

In TA: Mutation two string assignments to one field cancelled each other, so two swaps on one unit never worked together. In Open Annihilation the later swap would replace the earlier one (Q63), so the two cannot be picked together. The packages that set the same unit's weapon declare `conflicts-with` each other:

- `a-zipper`, `emg-zipper` and `hot-zipper` each set ARMFAST's weapon 1.
- `ak-weapon` and `gaatk` each set CORAK's weapon 1.
- `better-llt` and `big-llt` each set ARMLLT's weapon 1.

## Wrong compatibility tags

Three tags in the corpus do not match the weapons the originals need. The packages answer them as follows.

- Better LLTs says `TACC UH`. The laser is Uberhack's `ADV_DECKLASER`, which Core Contingency does not have. `big-llt` sets that weapon, and when `ctx.weapons` lacks it the units hook calls `ctx.incompatible`. When that weapon is missing, the package says it does not fit. The import warns that `TACC` maps to `ta-3.1c` and that `UH` is not mapped to a mod.
- Battle Ship Deck Lasers says `*`. The Arm unit file sets `ARM_BATSAFT` and `ARM_BATSFORE`, which are Uberhack-only. `battleship-deck-lasers` does not set those fields, so the base game's `ARM_BATS` stays in both slots.
- Better L.L.T and Terrain Terror say `*`. The weapon is Core Contingency's `ARMSCORP_WEAPON`. Each package has a units hook: when `ctx.weapons` lacks that weapon, it calls `ctx.incompatible` and names the original.

## Files

### battleship-deck-lasers

`battleship-deck-lasers` ships four runtime files. Each hash is the SHA-256 of the archive entry, and the file under `files/` is those bytes. The `.bos` sources are not shipped: the game never reads them.

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/objects3d/armbats.3do` | `Mutators/}{BSDECKL.ccx` | `objects3d/armbats.3do` | `ba74d46536db75d664c238963deec8eb6cce8a08276a213ac7ab93e3329d84ab` |
| `files/objects3d/corbats.3do` | `Mutators/}{BSDECKL.ccx` | `objects3d/corbats.3do` | `1136af2b7883559a8f01ad27ca245f7b2d485ee194a93d0574d502291fbad7a7` |
| `files/scripts/ARMBATS.COB` | `Mutators/}{BSDECKL.ccx` | `scripts/ARMBATS.COB` | `a9f6dbc305afc40de04418c962503687b735f4a90261eabd5a60457b3f6a6320` |
| `files/scripts/corbats.cob` | `Mutators/}{BSDECKL.ccx` | `scripts/corbats.cob` | `0a3404ab63aebe158ac478434044bde3118d4f6e4c665fc3527460ceac6aa64e` |

The package adds `files` in the plan so the Files layer serves the models and scripts. `armbats.3do` and `ARMBATS.COB` change ARMBATS by that name, and `corbats.3do` and `corbats.cob` change CORBATS by that name. The description says so.

## Files the imports left out

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

`battleship-deck-lasers.allowed` is the only allowance. The archive replaces both battleship unit files and adds models, scripts and `.bos` sources. The curated package ships the two models and the two `.cob` scripts, and sets only these fields. ARMBATS: acceleration 0.01, brake 0.025, `MaxDamage` 8064, weapon 3 `ARM_LIGHTLASER`, `wspe_badtargetcategory` `ANTILASER`. CORBATS: acceleration 0.011, brake 0.02, `MaxDamage` 8364, weapon 1 `COR_BATS`, weapon 2 `CORE_BATSLASER`, weapon 3 `CORE_LIGHTLASER`, `wsec_badtargetcategory` and `wspe_badtargetcategory` `ANTILASER`. The comparison keeps eight differences, each under one of these reasons:

- Fields of the original's unit files that are Uberhack's: both files' `category`; ARMBATS weapon 1 `ARM_BATS` to `ARM_BATSAFT` and weapon 2 `ARM_BATS` to `ARM_BATSFORE` (the base game's `ARM_BATS` stays in both slots); CORBATS `explodeas` and `selfdestructas`, which the original sets to `ATOMIC_BLASTSML`.
- Script sources, which the game never reads. The base game already has `scripts/armbats.bos` and `scripts/corbats.bos`, so the import replaces them. The pattern is `right only file replaced scripts/*.bos *`.

Every other field the unit files carry from the balance they were cut from stays out of the package, and the comparison shows none of those fields.

`big-llt` has no allowed file. The curated rules set only the archive's own stat changes. ARMLLT: `BuildCostEnergy` 1837, `BuildCostMetal` 331, `BuildTime` 8662, `MaxDamage` 1030, weapon 1 `ADV_DECKLASER`, `CanGuard` 1. CORLLT: `BuildCostEnergy` 2052, `BuildCostMetal` 334, `BuildTime` 8724, `MaxDamage` 1110, `SightDistance` 380, weapon 1 `ADV_DECKLASER`, `CanGuard` 1. The rules leave both files' `Category`, `BadTargetCategory`, `wpri_badtargetcategory` and the name `LLT`, which are Uberhack's. On the base game the curated package refuses itself, because `ADV_DECKLASER` is missing, where the import applies and leaves both towers without a weapon. That refusal is the recorded report, and the row names no import. On Uberhack the curated package applies and both towers fire `ADV_DECKLASER`, but the import refuses itself, since P05 maps `TACC` to `ta-3.1c`. The two sides never apply together.

The ten swaps and Better LLTs and the battleship stats name their units, as the originals do. A Zipper's two blocks are one rule. Super Zeus fires `COMMANDER_BLAST`, a death explosion used as a gun, as the original does. Each of those eleven comparisons matches its import with nothing left over. Each swap's report changes only that unit's named fields.

## Not in this family

DRUH 00.11 is a whole mod, not a mutator. It is not packaged here.

## Originals

| Original | Source | Import | Package | Option | Checked over |
|---|---|---|---|---|---|
| [MAC] Arm Perseus Advanced Gunship tweaks for UTASP 3 | `igi-server/MAC's mutators/{}MAC ARMPERS tweak.tam` | `mac-arm-perseus-advanced-gunship-tweaks-for-utasp-3` | `perseus-tweak` | — | `utasp-v5.0` |
| [MAC] Core Armed Metal Extractor tweak for UTASP | `igi-server/MAC's mutators/{}MAC MLEX tweak.tam` | `mac-core-armed-metal-extractor-tweak-for-utasp` | `armed-extractor-tweak` | — | `tauip-v2.1` |
| [MAC] Arm Eagle targeting tweak | `igi-server/MAC's mutators/{}MAC ARMAWAC tweak.tam` | `mac-arm-eagle-targeting-tweak` | `radar-plane-targeting` | plane eagle | 3.1c |
| [MAC] Arm Seahawk targeting tweak | `igi-server/MAC's mutators/{}MAC ARMSEHAK tweak.tam` | `mac-arm-seahawk-targeting-tweak` | `radar-plane-targeting` | plane seahawk | 3.1c |
| [MAC] Arm Lancet tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMLANCE tweak.tam` | `mac-arm-lancet-tweak-for-utasp` | `lancet-targets` | — | 3.1c |
| [MAC] Absolute Annihilation 6.0 Tweaks | `igi-server/MAC's mutators/}{MAC AA 6.0 Tweaks.tam` | `mac-absolute-annihilation-6-0-tweaks` | not converted | — | not checked |

`radar-plane-targeting` with plane both is the two plane imports together. `nano-tower-tweak` with for utasp is the default.

Why each row runs where it does:

Clairvoyance keeps the originals' checks: the unit name is ArmBeac or ArmEye (Core: CorBeac or CorEye), the description mentions Radar, the sound is ARM_ADVRADAR or CORE_ADVRADAR, and the radar range is already between 4000 and 32000. On the packaged units those checks hold (the files write the names in capitals; the check ignores ASCII case).

## Not converted

Absolute Annihilation 6.0 Tweaks is not a package. It needs Absolute Annihilation 6.0, which is not packaged, so it is not checked. The import `mac-absolute-annihilation-6-0-tweaks` is kept. The archive is Absolute Annihilation 6.0's whole `weapons/weapons.tdf`, with `burnblow=0`, `unitsonly=1` and `noautorange=1` added to its Mercury (`ADVSAM`). Over 3.1c that file would replace 3.1c's own `weapons.tdf`.

## Needs <mod>; not checked

- TADD's CorEye. No packaged mod holds it. Clairvoyance's Core block still checks CorEye, and nothing here runs that block against TADD.
- TAUCP 1.7 and 1.8's own towers. Those are the TAUCP nano-tower tweak's own targets, and neither version is packaged. The same two unit names are in UTASP 5.0, so that row runs there.
- UTASP 3.0's `SAM_weapon`. Perseus names that weapon. UTASP 5.0 has ARMPERS and not the weapon, so the rule is checked there and the weapon is not. `oa-tool mutator diff` does not start a match, so it does not see the game refuse the missing weapon.

## Files left out of the hard imports

P05's warnings, from `tools/build-packages`. F02 refuses a path outside the per-match allow-list. F04 allows `anims/<unit>_gadget.gaf` for a unit the archive adds, so those buttons are kept.

- `}{MAC ARMNTOW tweak.ccx`: left out `gui/ARMMTLAB1.GUI` (unknown-folder). The folder is misspelt. TA never read it either. The two button pictures, `anims/ARMMTLAB_gadget.GAF` and `anims/ARMNTOW_gadget.GAF`, are kept, and the curated package ships them.
- `}{MAC ARM_eyes tweak.ccx`: nothing left out. `anims/ARMEYES_gadget.GAF` is kept, and the curated package ships it.
- `}{MAC AA 6.0 Tweaks.ccx`: left out `tweaks.txt` (unknown-folder). It sits at the top of the archive and says which three keys were added to ADVSAM. `weapons/weapons.tdf` is kept in the import only.

Every other import warning is a compatibility code with no mod (`UTASP`, `UT30b`, `UT40b`, `UT50b`, `TAUCP17`, `TAUCP18`, `TAUCP23`, `AA60`), the note that tags default to gameplay, or, for the Seahawk, that an empty line before the compatibility line was skipped. OTA and TACC on the two plane tweaks map to the base game. None of those codes is passed as `--works-with`.

## Files

Each hash is the SHA-256 of the archive entry. The file under `files/` is those bytes. Paths keep the archive's names.

## Differences from the originals

There is no allowed file. Every row of `_verify/comparisons.tsv` keeps `allowed` as `-`. Each comparison of the curated package with its faithful import matched, over 3.1c or over the row's mod, so no package was changed.

The reports are what `oa-tool mutator diff` prints. A tweak changes only the fields its original names, on the units it names. A field the unit already holds does not appear: the Seahawk's `MaxWaterDepth` is already 255, and on UTASP 5.0 the advanced seaplane builder's `MaxWaterDepth` is already 255. Nano Tower adds ARMMTLAB and ARMNTOW, their files and their menu entries. Dragon's Eye adds ARMEYES. Clairvoyance over UTASP 5.0 changes ARMBEAC and CORBEAC. Over TAUCP 2.3 it changes ARMEYE.

The files layer writes `download/armmtlab-2.tdf` for the pad's ARMFAB entry, a builder 3.1c does not have. The import's own report has the same file, so the comparison does not count it.

## Notes from the families these packages came from

These sentences are the old families' own openings. The package counts in them are those families', and a folder they name is the one this grouping replaced.

### Movement and armour

Fourteen TA: Mutation movement and armour mutators, plus MAC (macraig)'s Arm and Core Maneuverable Boats. Each curated package is one folder here. `tools/build-packages` builds the faithful imports, from `_imports.tsv`, into `build/movement/_imports/`. Nothing taken from an original is stored in this folder.

The weapon blocks of Close Encounters and FasTA are Lua. The rules reference gives `on("weapons", "tdf")` for a weapon file and `["<AllDepth2>"]` for every damage value, so neither block is kept as an `.sm` file. No package in this family has a `rules/` folder.

### Removals, toggles and tables

Eighteen packages replace twenty of the twenty-two TA: Mutation removal, toggle and table mutators. MAC (macraig)'s Friendly Skies and Even Friendlier Skies are the aircraft option on No Air. Hover Craft Fix and Vibrant Colors are not converted. Every rule is Lua. Double LOS is the only package that ships a file from the originals, and Files names that file.

### Weapons

Fourteen packages replace fifteen TA: Mutation weapon-swap and build-menu mutators. SharedTech OTA and SharedTech UH are one package. The ten swaps are rules on the units the originals name. Better LLTs is the same kind of rule. Battleship Deck Lasers keeps the models and scripts as files and the stats as rules. Shared Tech and Low Tech edit build menus, so they fit any mod.

### MAC's unit tweaks

Fourteen packages replace sixteen of MAC's (macraig) single-unit tweaks and his two unit adders. The tweaks name the units they change, as the originals do, so a game without that unit is unchanged. The two adders ship the original's files in `files/`. Files lists each path, the archive and entry it came from, and its SHA-256. Absolute Annihilation 6.0 Tweaks is not converted. No comparison needs an allowed difference. The reports are in `_verify/`.

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. MAC's codes (`UTASP`, `TAUCP17`, `UT40b`, `AA60` and the rest) stay on each legacy record.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" weapons
```

That prints `build: weapons: 21 imports, 22 packages`. Pack and check from `build/weapons`. Paths in `_verify/comparisons.tsv` are relative to that folder. A row whose `mod` is not `-` is diffed with `--mod-dir`, and a row whose `map` is not `-` is diffed with `--map`. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
