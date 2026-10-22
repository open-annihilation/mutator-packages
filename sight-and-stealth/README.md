# Sight and stealth

This group holds the mutators that change sight, radar, cloak and stealth. Eight packages. Each original's author stays in the tables here and in the package's manifest.

## Originals

| Title | Author | Source under `originals/` | Import | Package | Comparison rows |
|---|---|---|---|---|---|
| StealthySpies | uncredited | `Mutators/{}StealthySpies.tam` | `stealthyspies` | `stealthy-spies` | `stealthy-spies` |
| Hover Craft Fix | Davicius / Total Dave | `Mutators/{}HoverFix.tam` | `hover-craft-fix` | not converted | — |
| CloakMod v1.0 | me22 | `Mutators/{}CloakMod1-0.tam` | `cloakmod-v1-0` | `cloakmod` | `cloakmod`, `cloakmod-see`, `cloakmod-expensive` |
| CloakMod v1.0: +NowISee | me22 | `Mutators/{}CloakMod1-0-CanSee.tam` | `cloakmod-v1-0-nowisee` | `cloakmod`, distance 5 | `cloakmod-see` |
| CloakMod v1.0: Expen$ive | me22 | `Mutators/{}CloakMod1-0-Expensive.tam` | `cloakmod-v1-0-expen-ive` | `cloakmod`, cost 2 | `cloakmod-expensive` |
| Double LOS | Gamma and Kirk | `Mutators/{}DoubleLOS.tam` with `Mutators/{}DoubleLOS(1).ccx` | `double-los` | `double-los` | `double-los` |
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

`stealthy-spies.allowed`: StealthySpies names ARMSPY and CORSPY, sets stealth, and also sets a jammer range of 40. That range was written for Uberhack's spies. The text says stealth rather than personal jamming, and 3.1c's spies have no jammer, so the package sets stealth only. The allowed file names the two `radardistancejam` lines the import adds, on `units/armspy.fbi` and `units/corspy.fbi`.

CloakMod's twenty-two groups are one function. Every unit starts cloaked. The cloak band comes from the metal cost, and a missing metal cost reads as 0, so ARMFMKR and CORFMKR fall in the first band: 0 to 99 gives 1, 100 to 499 gives 2, 500 to 1999 gives 3, 2000 to 9999 gives 4, and anything else gives 5. Cloak cost is the band times the cost option, and cloak cost while moving is twice that. A mobile unit's cloak distance comes from its depth: 1 or 2 gives 50, 3 gives 70, 4 gives 100, 5 gives 140, and anything else gives 200. Every unit that has a cloak distance, set here or its own, is then multiplied by the distance option. The original's energy bands and width bands are left out. TA: Mutation averaged the two energy values, it did not overwrite them, so ARMCOM got a cloak cost of 4.5 and a moving cost of 9. Open Annihilation runs rules in sequence (Q63), so the later block replaces the earlier one and this package gives 5 and 10, matching the faithful import. Expen$ive's rules multiply by 2. Its text said 5.

Double Reload Times matches its import, including a reload time spelled with a leading dot. On 3.1c that is 28 weapons, and both sides double them, now that the engine reads that spelling (R07).

Double LOS keeps the sight and radar factors and ships `files/gamedata/los.tdf` from `Mutators/{}DoubleLOS(1).ccx`, entry `gamedata/los.tdf`, SHA-256 `47f7079821ce0d0123d844d47343ad82483a48f13b70eed7c2877d9228e5de6a`. The table holds 32 sight entries where 3.1c holds 9, so doubled sight is not cut short.

AI Tag Remover drops `ai_weight` and `ai_limit` when the field is present. The original looked for the text "we" and "li". On this game every unit that has either field holds that text, so the same units match.

## Files

### double-los

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/gamedata/los.tdf` | `Mutators/{}DoubleLOS(1).ccx` | `gamedata/los.tdf` | `47f7079821ce0d0123d844d47343ad82483a48f13b70eed7c2877d9228e5de6a` |

## Originals

| Title | Source under `originals/` | Import | Package and option | Comparison rows |
|---|---|---|---|---|
| [MAC] Clairvoyance generic | `igi-server/MAC's mutators/{}MAC Clairvoyance generic.tam` | `mac-clairvoyance-generic` | `clairvoyance` | `clairvoyance` |
| [MAC] Enhanced LOS (1000) | `igi-server/MAC's mutators/{}MAC Enhanced LOS (1000).tam` | `mac-enhanced-los-1000` | `enhanced-los`, sight 1000 | `enhanced-los-1000` |
| [MAC] Enhanced LOS (1600) | `igi-server/MAC's mutators/{}MAC Enhanced LOS (1600).tam` | `mac-enhanced-los-1600` | `enhanced-los`, sight 1600 | `enhanced-los-1600` |
| [MAC] Enhanced LOS (200%) | `igi-server/MAC's mutators/{}MAC Enhanced LOS (200%).tam` | `mac-enhanced-los-200` | `enhanced-los`, sight double | `enhanced-los-double` |
| [MAC] LOS_1600 | `igi-server/MAC's mutators/}{MAC LOS_1600.tam` | `mac-los-1600` | `enhanced-los` (its table) | `enhanced-los-double`, `enhanced-los-1000`, `enhanced-los-1600` |
| [MAC] Incognito (Arm) | `igi-server/MAC's mutators/{}MAC Incognito (Arm).tam` | `mac-incognito-arm` | `incognito`, side arm | `incognito-arm` |
| [MAC] Incognito (Core) | `igi-server/MAC's mutators/{}MAC Incognito (Core).tam` | `mac-incognito-core` | `incognito`, side core | `incognito-core` |
| [MAC] Incognito (Arm) (every side) | `igi-server/MAC's mutators/{}MAC Incognito.tam` | `mac-incognito` | `incognito` | `incognito` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it, except LOS_1600, which is a `}{` mutator with `}{MAC LOS_1600.ccx`.

## The sight table

`enhanced-los` ships one file taken from an original.

### Files

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/gamedata/los.tdf` | `igi-server/MAC's mutators/}{MAC LOS_1600.ccx` | `gamedata/LOS.TDF` | `d09485d65ed717a2cb65896999ff3444f7c724b24379c330a803c2723b91180d` |

The table's `NumTables` is 50, which allows a sight distance of 1600. LOS_1600 shipped that file as its own mutator and did not change any unit's sight. The file is added for every Sight value. Double LOS replaces the whole table too, so `enhanced-los` conflicts with `double-los`. Each recorded report lists 278 `sightdistance` lines and the same 2449 field lines on `gamedata/los.tdf` as the LOS_1600 import. The tool compares a parsed table by field, so the report has no `file replaced` line. A comparison of each Sight value against its Enhanced LOS import and LOS_1600 matches.

## Differences from the originals

Enhanced Builders leaves commanders out with `commander` 1 instead of the names ARMCOM and CORCOM. On 3.1c that is the same set. The decoy commanders have no commander flag, so both versions include them. The comparison rows allow no differences.

Super Commander keeps each side's numbers. Arm multiplies top speed by 7 and braking and acceleration by 49. Core multiplies top speed by 5 and braking and acceleration by 25. Both texts promise 500% more speed. Side all applies each copy to its own side. A commander of another side is left alone, as the two originals leave it.

Resources Easy Self-Destruct keeps the Arm transport change on the Transportable option, which defaults to no. The Arm comparison sets Transportable to yes. The Core comparison leaves it at no, and the Core rules do not set the transport fields.

Maneuverable Hovers keeps the rule's numbers. The text says top speeds stay unchanged. The rule sets bank scale to 0.7, multiplies top speed, braking and acceleration by 2.5, multiplies turn rate by 6, and sets the override adjust to 1. The comparison row allows no differences.

`{}MAC Bio-Armor.tam` and `{}MAC Incognito.tam` are titled "[MAC] Bio-Armor (Arm)" and "[MAC] Incognito (Arm)", the same titles as the Arm files. Their rows pass `--id`, and the import id is that id: `mac-bio-armor` and `mac-incognito`. Every other row writes `-` in the id column.

Useful Mines writes an empty yard map from the units hook. A rule that sets an empty value would remove the field, and the original sets `Yardmap` empty so the mines are hard to kill without area weapons. The original names `Category` twice, once for ` MINE` and once for `KAMIKAZE`. The Lua rules keep both tests as two needs on that field, and the hook uses the same two needs. The selection is the original's.

## Originals

| Original | Source | Import | Package | Option | Checked over |
|---|---|---|---|---|---|
| [MAC] Clairvoyance XLR (Arm) | `igi-server/MAC's mutators/{}MAC Clairvoyance XLR (Arm).tam` | `mac-clairvoyance-xlr-arm` | `clairvoyance-xlr` | side arm | `utasp-v5.0` and `taucp-v2.3` |
| [MAC] Clairvoyance XLR (Core) | `igi-server/MAC's mutators/{}MAC Clairvoyance XLR (Core).tam` | `mac-clairvoyance-xlr-core` | `clairvoyance-xlr` | side core | `utasp-v5.0` |
| [MAC] Clairvoyance XLR | `igi-server/MAC's mutators/{}MAC Clairvoyance XLR.tam` | `mac-clairvoyance-xlr` | `clairvoyance-xlr` | side all | `utasp-v5.0` |
| [MAC] Arm Peeper tweak | `igi-server/MAC's mutators/{}MAC ARMPEEP tweak.tam` | `mac-arm-peeper-tweak` | `peeper-tweak` | — | 3.1c |
| [MAC] Absolute Annihilation 6.0 Tweaks | `igi-server/MAC's mutators/}{MAC AA 6.0 Tweaks.tam` | `mac-absolute-annihilation-6-0-tweaks` | not converted | — | not checked |

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

### Removals, toggles and tables

Eighteen packages replace twenty of the twenty-two TA: Mutation removal, toggle and table mutators. MAC (macraig)'s Friendly Skies and Even Friendlier Skies are the aircraft option on No Air. Hover Craft Fix and Vibrant Colors are not converted. Every rule is Lua. Double LOS is the only package that ships a file from the originals, and Files names that file.

### MAC's unit mutators

Sixteen packages replace the thirty-five unit-rule mutators MAC (macraig) wrote from 2003 to 2008. Arm, Core and every-side copies of one mutator are a Side choice on one package. Agile Aircraft's two designs are a Version choice. Enhanced LOS's three sight settings are a Sight choice, and the package ships the LOS_1600 table with every one of them. Easy Self-Destruct's Arm transport change is a Transportable choice.

### MAC's unit tweaks

Fourteen packages replace sixteen of MAC's (macraig) single-unit tweaks and his two unit adders. The tweaks name the units they change, as the originals do, so a game without that unit is unchanged. The two adders ship the original's files in `files/`. Files lists each path, the archive and entry it came from, and its SHA-256. Absolute Annihilation 6.0 Tweaks is not converted. No comparison needs an allowed difference. The reports are in `_verify/`.

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. MAC's codes (`UTASP`, `TAUCP17`, `UT40b`, `AA60` and the rest) stay on each legacy record.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" sight-and-stealth
```

That prints `build: sight-and-stealth: 17 imports, 8 packages`. Pack and check from `build/sight-and-stealth`. Paths in `_verify/comparisons.tsv` are relative to that folder. A row whose `mod` is not `-` is diffed with `--mod-dir`, and a row whose `map` is not `-` is diffed with `--map`. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
