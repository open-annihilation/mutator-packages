# Rules

This group holds the mutators that change a match rule rather than one weapon, one price or one map: self-destruct, corpses, the damage bar, transports, capture, resurrection, AI tags and mines. Ten packages. Each original's author stays in the tables here and in the package's manifest.

## Originals

| Title | Author | Source under `originals/` | Import | Package | Comparison rows |
|---|---|---|---|---|---|
| No Corpses | Drinken | `Mutators/{}NoCorpses.tam` | `no-corpses` | `no-corpses` | `no-corpses` |
| Hide Damage | Kirk | `Mutators/{}HideDamage.tam` | `hide-damage` | `hide-damage` | `hide-damage` |
| Shootall | ATRCaptainKirk | `Mutators/{}Shootall.tam` | `shootall` | `shootall` | `shootall` |
| Trans allow fire | Drinken | `Mutators/{}Trans_allow_fire_sm.tam` | `trans-allow-fire` | `transports-fire` | `transports-fire` |
| Subversion | Immerman | `Mutators/{}Subversion.tam` | `subversion` | `subversion` | `subversion` |
| They Live Again | Immerman | `Mutators/{}TheyLiveAgain.tam` | `they-live-again` | `they-live-again` | `they-live-again` |
| Hover Craft Fix | Davicius / Total Dave | `Mutators/{}HoverFix.tam` | `hover-craft-fix` | not converted | — |
| AI weight & limit remover | Drinken | `Mutators/{}Weight&Limit_Remover.tam` | `ai-weight-limit-remover` | `ai-tag-remover` | `ai-tag-remover` |
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

Double Reload Times matches its import, including a reload time spelled with a leading dot. On 3.1c that is 28 weapons, and both sides double them, now that the engine reads that spelling (R07).

Double LOS keeps the sight and radar factors and ships `files/gamedata/los.tdf` from `Mutators/{}DoubleLOS(1).ccx`, entry `gamedata/los.tdf`, SHA-256 `47f7079821ce0d0123d844d47343ad82483a48f13b70eed7c2877d9228e5de6a`. The table holds 32 sight entries where 3.1c holds 9, so doubled sight is not cut short.

AI Tag Remover drops `ai_weight` and `ai_limit` when the field is present. The original looked for the text "we" and "li". On this game every unit that has either field holds that text, so the same units match.

## Originals

| Title | Source under `originals/` | Import | Package and option | Comparison rows |
|---|---|---|---|---|
| [MAC] Everybody Rides The Bus | `igi-server/MAC's mutators/{}MAC Everybody Rides The Bus.tam` | `mac-everybody-rides-the-bus` | `everybody-rides` | `everybody-rides` |
| [MAC] Resources Easy Self-Destruct (Arm) | `igi-server/MAC's mutators/{}MAC Resources Easy Self-Destruct (Arm).tam` | `mac-resources-easy-self-destruct-arm` | `easy-self-destruct`, side arm, transportable yes | `easy-self-destruct-arm` |
| [MAC] Resources Easy Self-Destruct (Core) | `igi-server/MAC's mutators/{}MAC Resources Easy Self-Destruct (Core).tam` | `mac-resources-easy-self-destruct-core` | `easy-self-destruct`, side core | `easy-self-destruct-core` |
| [MAC] Useful Mines | `igi-server/MAC's mutators/{}MAC Useful Mines.tam` | `mac-useful-mines` | `useful-mines` | `useful-mines` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it, except LOS_1600, which is a `}{` mutator with `}{MAC LOS_1600.ccx`.

## Differences from the originals

Enhanced Builders leaves commanders out with `commander` 1 instead of the names ARMCOM and CORCOM. On 3.1c that is the same set. The decoy commanders have no commander flag, so both versions include them. The comparison rows allow no differences.

Super Commander keeps each side's numbers. Arm multiplies top speed by 7 and braking and acceleration by 49. Core multiplies top speed by 5 and braking and acceleration by 25. Both texts promise 500% more speed. Side all applies each copy to its own side. A commander of another side is left alone, as the two originals leave it.

Resources Easy Self-Destruct keeps the Arm transport change on the Transportable option, which defaults to no. The Arm comparison sets Transportable to yes. The Core comparison leaves it at no, and the Core rules do not set the transport fields.

Maneuverable Hovers keeps the rule's numbers. The text says top speeds stay unchanged. The rule sets bank scale to 0.7, multiplies top speed, braking and acceleration by 2.5, multiplies turn rate by 6, and sets the override adjust to 1. The comparison row allows no differences.

`{}MAC Bio-Armor.tam` and `{}MAC Incognito.tam` are titled "[MAC] Bio-Armor (Arm)" and "[MAC] Incognito (Arm)", the same titles as the Arm files. Their rows pass `--id`, and the import id is that id: `mac-bio-armor` and `mac-incognito`. Every other row writes `-` in the id column.

Useful Mines writes an empty yard map from the units hook. A rule that sets an empty value would remove the field, and the original sets `Yardmap` empty so the mines are hard to kill without area weapons. The original names `Category` twice, once for ` MINE` and once for `KAMIKAZE`. The Lua rules keep both tests as two needs on that field, and the hook uses the same two needs. The selection is the original's.

## Notes from the families these packages came from

These sentences are the old families' own openings. The package counts in them are those families', and a folder they name is the one this grouping replaced.

### Removals, toggles and tables

Eighteen packages replace twenty of the twenty-two TA: Mutation removal, toggle and table mutators. MAC (macraig)'s Friendly Skies and Even Friendlier Skies are the aircraft option on No Air. Hover Craft Fix and Vibrant Colors are not converted. Every rule is Lua. Double LOS is the only package that ships a file from the originals, and Files names that file.

### MAC's unit mutators

Sixteen packages replace the thirty-five unit-rule mutators MAC (macraig) wrote from 2003 to 2008. Arm, Core and every-side copies of one mutator are a Side choice on one package. Agile Aircraft's two designs are a Version choice. Enhanced LOS's three sight settings are a Sight choice, and the package ships the LOS_1600 table with every one of them. Easy Self-Destruct's Arm transport change is a Transportable choice.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" rules
```

That prints `build: rules: 11 imports, 10 packages`. Pack and check from `build/rules`. Paths in `_verify/comparisons.tsv` are relative to that folder. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
