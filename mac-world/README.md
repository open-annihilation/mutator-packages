# MAC's map and feature mutators

Nine packages replace the fourteen map and feature mutators MAC (macraig) wrote. Acid's two strengths, wind's two settings, Heavy Metal's three levels and the choice between every indestructible feature and the monorails are options. The map packages run in the maps phase, on the one map the match chose. The feature packages declare `units` and `features` and write `ctx.features` from the units hook, because a plan has no features hook.

`originals/` and `build/` are gitignored. The commands below build the faithful imports and the curated packages under `build/mac-world/`. L24 compares each row and records the reports. `fortified-forts.allowed` is L24's as well.

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
| [MAC] Fortified Forts & Walls | `igi-server/MAC's mutators/{}MAC Fortified Forts & Walls.tam` | `mac-fortified-forts-walls` | `fortified-forts` | `-` | `fortified-forts` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it. No package takes a file from the originals.

## Differences from the originals

`fortified-forts.allowed` records the hit-point fix, and L24 writes that file. The original's sevenfold groups need `DamageModifier` outside 0.00000001 to 1. A structure that leaves the key out reads 1, which is inside that range, so those groups selected nothing and the 0.07 groups found no field to scale. Twenty-five static weapons on 3.1c kept their hit points. This version treats a missing modifier as the case the original meant, and multiplies those hit points by 7. A modifier that is written outside that range still takes the sevenfold hit points, and one written inside it is still multiplied by 0.07. The original's text says ten times. The rule says seven, and both the import and this version follow the rule.

The feature packages walk every feature. Maxed Metalspots, No Fugly Scars and No Permanent Features each named 41 folders, one by one, and `folder` is not recursive. Twenty-four of those names are third-party sets 3.1c does not ship. The other seventeen are all of 3.1c's feature folders, so on 3.1c the same sections change. A map pack or a mod whose patches live in some other folder is changed too, which the named lists missed. Destructible Monorails named only `features/Urban`. The monorail choice still selects by the description Monorail, in any folder. Fortified Forts named `features/corpses` and `features/All Worlds` for the dragon's teeth. This version uses the same tooth test on every feature.

A scale that lands between whole numbers is floored in the curated packages. Water damage and the two wind speeds are stored as whole numbers. Weak acid takes a tenth of the damage and drops the fraction. Steady wind takes half again and drops the fraction, then applies the original clamps. The comparison maps are chosen so that tenth and that half again are already whole, and the rows still show the floored write.

Heavy Metal wrote `SurfaceMetal` and `MohoMetal` on the map header. No 3.1c map keeps either key there. Surface metal is read from each schema. The faithful import copies a header `SurfaceMetal` onto every schema and skips `MohoMetal`. This version writes `surfacemetal` on every schema, which is where the game reads it, and does not write `MohoMetal` anywhere. The game never reads `MohoMetal`.

No Scars removes `featuredead` and `featurereclamate` from every feature. A wreck's heap is the feature the first of those keys names, so a wreck leaves no heap either, as in the original.

## Maps the rows use

Acid Pools is an acid map: lava is off, water does damage, and water damage is 10, so a tenth is the whole number 1. Its wind is 2000 to 4000, so half again is a whole number before Steady Wind's clamps raise the minimum to 4000. It has one schema, whose surface metal is 3, so Heavy Metal's three levels are each one write. Lava Highground is a lava map: lava is on, and it has no water keys, so Passable Lava is the whole change. Temblorian Mist is fog rather than lava: the planet is not Lava, lava is on, water damage is 100 and the sea-level trigger is on. The five feature and unit rows do not change a map, so their map column is `-`.

## Build, pack and check

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only --set igi-server
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" mac-world
```

That prints `build: mac-world: 14 imports, 9 packages, 0 files from originals`. Pack and check from `build/mac-world`:

```sh
S=$(mktemp -d -t L12)
for m in */oamut.yaml; do
  id=${m%/oamut.yaml}
  case $id in _*) continue;; esac
  "$T" mutator pack "$id" --out "$S/$id.oamut" && "$T" mutator check "$S/$id.oamut" --json > "$S/$id.json"
done
```

Paths in `_verify/comparisons.tsv` are relative to `build/mac-world`. A row whose map is not `-` is diffed with `--map` set to that map. A second `tools/build-packages --tool "$T" mac-world --out <empty folder>` matches `build/mac-world`.
