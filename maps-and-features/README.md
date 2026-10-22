# Maps and features

This group holds the mutators that change what a map does to water, wind, metal, fog and lava, and what happens to the features on it. Nine packages. Each original's author stays in the tables here and in the package's manifest.

## Originals

| Title | Author | Source under `originals/` | Import | Package | Comparison rows |
|---|---|---|---|---|---|
| Non-blocking Corpses | ATRCaptainKirk | `Mutators/{}Non-blockingCorpses.tam` | `non-blocking-corpses` | `non-blocking-corpses` | `non-blocking-corpses` |
| Hover Craft Fix | Davicius / Total Dave | `Mutators/{}HoverFix.tam` | `hover-craft-fix` | not converted | — |
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

`non-blocking-corpses.allowed`: The original cleared blocking on every feature in the corpses folder. A features hook clears blocking on the wreck a unit names as its corpse and on each feature that wreck turns into, followed to the end of the chain. It reads units to find those wrecks, which needs no layer, and the package declares only features. A wreck stored outside that folder counts. A unit that is itself a feature, such as dragon's teeth, leaves that feature, not a wreck, so it keeps blocking. On 3.1c those units are ARMDRAG, CORDRAG, ARMFDRAG, CORFDRAG, ARMFORT and CORFORT, and the chain keeps DRAGONSTEETH, DRAGONSTEETH_CORE, ROCKTEETH, FLOATINGTEETH, FLOATINGTEETH_CORE, FORTIFICATION and FORTIFICATION_CORE blocking. The comparison shows no wreck kept outside the corpses folder. The allowed file covers the 26 corpses-folder features no unit leaves, which keep blocking, one `blocking` line each. Eighteen are aircraft wrecks whose units name no corpse: ARMACA_DEAD, ARMATLAS_DEAD, ARMBRAWL_DEAD, ARMCA_DEAD, ARMFIG_DEAD, ARMHAWK_DEAD, ARMLANCE_DEAD, ARMPEEP_DEAD, ARMPNIX_DEAD, CORACA_DEAD, CORAPE_DEAD, CORFINK_DEAD, CORHURC_DEAD, CORSHAD_DEAD, CORTITAN_DEAD, CORVALK_DEAD, CORVAMP_DEAD and CORVENG_DEAD. The other eight are ARMSEER_DEAD and CORVRAD_DEAD (those units leave armjam_dead), CORGOL_DEAD (CORGOL leaves corvroc_dead), CORFMD_DEAD (CORFMD leaves armamd_dead), ARMVADER_DEAD, CORFMKR_DEAD and CORROACH_DEAD (those units name no corpse), and CORMLS_DEAD (3.1c has no CORMLS unit).

CloakMod's twenty-two groups are one function. Every unit starts cloaked. The cloak band comes from the metal cost, and a missing metal cost reads as 0, so ARMFMKR and CORFMKR fall in the first band: 0 to 99 gives 1, 100 to 499 gives 2, 500 to 1999 gives 3, 2000 to 9999 gives 4, and anything else gives 5. Cloak cost is the band times the cost option, and cloak cost while moving is twice that. A mobile unit's cloak distance comes from its depth: 1 or 2 gives 50, 3 gives 70, 4 gives 100, 5 gives 140, and anything else gives 200. Every unit that has a cloak distance, set here or its own, is then multiplied by the distance option. The original's energy bands and width bands are left out. TA: Mutation averaged the two energy values, it did not overwrite them, so ARMCOM got a cloak cost of 4.5 and a moving cost of 9. Open Annihilation runs rules in sequence (Q63), so the later block replaces the earlier one and this package gives 5 and 10, matching the faithful import. Expen$ive's rules multiply by 2. Its text said 5.

Double Reload Times matches its import, including a reload time spelled with a leading dot. On 3.1c that is 28 weapons, and both sides double them, now that the engine reads that spelling (R07).

Double LOS keeps the sight and radar factors and ships `files/gamedata/los.tdf` from `Mutators/{}DoubleLOS(1).ccx`, entry `gamedata/los.tdf`, SHA-256 `47f7079821ce0d0123d844d47343ad82483a48f13b70eed7c2877d9228e5de6a`. The table holds 32 sight entries where 3.1c holds 9, so doubled sight is not cut short.

AI Tag Remover drops `ai_weight` and `ai_limit` when the field is present. The original looked for the text "we" and "li". On this game every unit that has either field holds that text, so the same units match.

## Originals

| Title | Source under `originals/` | Import | Package and option | Map | Comparison row |
|---|---|---|---|---|---|
| [MAC] Brackish Not Acid | `igi-server/MAC's mutators/{}MAC Brackish Not Acid.tam` | `mac-brackish-not-acid` | `acid-water`, strength brackish | Acid Pools | `acid-water` |
| [MAC] Weak Acid | `igi-server/MAC's mutators/{}MAC Weak Acid.tam` | `mac-weak-acid` | `acid-water`, strength weak | Acid Pools | `acid-water-weak` |
| [MAC] Passable Lava | `igi-server/MAC's mutators/{}MAC Passable Lava.tam` | `mac-passable-lava` | `passable-lava` | Lava Highground | `passable-lava` |
| [MAC] Condensed Fog | `igi-server/MAC's mutators/{}MAC Condensed Fog.tam` | `mac-condensed-fog` | `condensed-fog` | Temblorian Mist | `condensed-fog` |
| [MAC] No Wind | `igi-server/MAC's mutators/{}MAC No Wind.tam` | `mac-no-wind` | `map-wind`, wind calm | Acid Pools | `map-wind` |
| [MAC] Steady Winds | `igi-server/MAC's mutators/{}MAC Steady Winds.tam` | `mac-steady-winds` | `map-wind`, wind steady | Acid Pools | `map-wind-steady` |
| [MAC] Heavy Metal 1 | `igi-server/MAC's mutators/{}MAC Heavy Metal 1.tam` | `mac-heavy-metal-1` | `heavy-metal`, level 1 | Acid Pools | `heavy-metal-1` |
| [MAC] Heavy Metal 2 | `igi-server/MAC's mutators/{}MAC Heavy Metal 2.tam` | `mac-heavy-metal-2` | `heavy-metal`, level 2 | Acid Pools | `heavy-metal-2` |
| [MAC] Heavy Metal 3 | `igi-server/MAC's mutators/{}MAC Heavy Metal 3.tam` | `mac-heavy-metal-3` | `heavy-metal`, level 3 | Acid Pools | `heavy-metal-3` |
| [MAC] Maxed Metalspots | `igi-server/MAC's mutators/{}MAC Maxed Metalspots.tam` | `mac-maxed-metalspots` | `maxed-metal-spots` | `-` | `maxed-metal-spots` |
| [MAC] No Fugly Scars | `igi-server/MAC's mutators/{}MAC No Fugly Scars.tam` | `mac-no-fugly-scars` | `no-scars` | `-` | `no-scars` |
| [MAC] No Permanent Features | `igi-server/MAC's mutators/{}MAC No Permanent Features.tam` | `mac-no-permanent-features` | `no-permanent-features`, which all | `-` | `no-permanent-features` |
| [MAC] Destructible Monorails | `igi-server/MAC's mutators/{}MAC Destructible Monorails.tam` | `mac-destructible-monorails` | `no-permanent-features`, which monorails | `-` | `no-permanent-features-monorails` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it. No package takes a file from the originals.

## Differences from the originals

The feature packages walk every feature. Maxed Metalspots, No Fugly Scars and No Permanent Features each named 41 folders, one by one, and `folder` is not recursive. A 42nd, `features\Sealife`, is commented out in all three, because a misspelt feature name in that third-party set stopped TA: Mutation's parser; walking every feature includes it when a map pack or mod brings it. Twenty-four of those names are third-party sets 3.1c does not ship. The other seventeen are all of 3.1c's feature folders, so on 3.1c the same sections change. A map pack or a mod whose patches live in some other folder is changed too, which the named lists missed. Destructible Monorails named only `features/Urban`. The monorail choice still selects by the description Monorail, in any folder. Fortified Forts named `features/corpses` and `features/All Worlds` for the dragon's teeth. This version uses the same tooth test on every feature.

A scale that lands between whole numbers is floored in the curated packages. Water damage and the two wind speeds are stored as whole numbers. Weak acid takes a tenth of the damage and drops the fraction. Steady wind takes half again and drops the fraction, then applies the original clamps. The comparison maps are chosen so that tenth and that half again are already whole, and the rows still show the floored write.

Heavy Metal wrote `SurfaceMetal` and `MohoMetal` on the map header. No 3.1c map keeps either key there. Surface metal is read from each schema. The faithful import copies a header `SurfaceMetal` onto every schema and skips `MohoMetal`. This version writes `surfacemetal` on every schema, which is where the game reads it, and does not write `MohoMetal` anywhere. The game never reads `MohoMetal`.

No Scars removes `featuredead` and `featurereclamate` from every feature. A wreck's heap is the feature the first of those keys names, so a wreck leaves no heap either, as in the original.

## Maps the rows use

Acid Pools is an acid map: lava is off, water does damage, and water damage is 10, so a tenth is the whole number 1. Its wind is 2000 to 4000, so half again is a whole number before Steady Wind's clamps raise the minimum to 4000. It has one schema, whose surface metal is 3, so Heavy Metal's three levels are each one write. Lava Highground is a lava map: lava is on, and it has no water keys, so Passable Lava is the whole change. Temblorian Mist is fog rather than lava: the planet is not Lava, lava is on, water damage is 100 and the sea-level trigger is on. The five feature and unit rows do not change a map, so their map column is `-`.

## Notes from the families these packages came from

These sentences are the old families' own openings. The package counts in them are those families', and a folder they name is the one this grouping replaced.

### Removals, toggles and tables

Eighteen packages replace twenty of the twenty-two TA: Mutation removal, toggle and table mutators. MAC (macraig)'s Friendly Skies and Even Friendlier Skies are the aircraft option on No Air. Hover Craft Fix and Vibrant Colors are not converted. Every rule is Lua. Double LOS is the only package that ships a file from the originals, and Files names that file.

### MAC's map and feature mutators

Nine packages replace the fourteen map and feature mutators MAC (macraig) wrote. Acid's two strengths, wind's two settings, Heavy Metal's three levels and the choice between every indestructible feature and the monorails are options. The map packages run in the maps phase, on the one map the match chose. Maxed Metalspots, No Scars and No Permanent Features declare `features` and do their work in a features hook. Fortified Forts keeps `units`, because its rules change wall and fort units by ted class, and fortifies dragon's teeth in a features hook.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" maps-and-features
```

That prints `build: maps-and-features: 14 imports, 9 packages`. Pack and check from `build/maps-and-features`. Paths in `_verify/comparisons.tsv` are relative to that folder. A row whose `mod` is not `-` is diffed with `--mod-dir`, and a row whose `map` is not `-` is diffed with `--map`. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
