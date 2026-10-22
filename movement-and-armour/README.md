# Movement and armour

This group holds the mutators that change speed, turning, braking, armour, hover movement, slopes, regeneration and fortified walls. Eighteen packages. Each original's author stays in the tables here and in the package's manifest.

## The fourteen originals

| Catalogue | Original | Author | Source | Import | Package |
|---|---|---|---|---|---|
| 33 | Hypermobility 2x | Immerman | `Mutators/{}HyperMobility2x.tam` | `hypermobility-2x` | `hypermobility` |
| 31 | Hypermobile Builders 3x | Immerman | `Mutators/{}HyperBuilders3x.tam` | `hypermobile-builders-3x` | `hypermobile-builders` |
| 56 | Slower Units | Drinken | `Mutators/{}SlowerUnits.tam` | `slower-units` | `slower-units` |
| 14 | 1.75 Speed Contruction KBots | ATRCaptainKirk | `Mutators/{}ConBotSpeedx1,75.tam` | `1-75-speed-contruction-kbots` | `conbot-speed` |
| 37 | Maneuverable Boats | uncredited (TA: Mutation standard pack) | `Mutators/{}ManeuverableBoats.tam` | `maneuverable-boats` | `maneuverable-boats` |
| 22 | Exaggerated Sides | uncredited (standard pack) | `Mutators/{}ExaggeratedSides.tam` | `exaggerated-sides` | `exaggerated-sides` |
| 36 | Level 2 Armour x 1.2 | ATRCaptainKirk | `Mutators/{}L2Armourx1,2.tam` | `level-2-armour-x-1-2` | `level-2-armour` |
| 24 | Faster Stumpy/Raiders | uncredited (S-Mutators only) | `S-Mutators/FastStumpy_mutator.zip` | `faster-stumpy-raiders` | `fast-raiders` |
| 25 | Faster Sumo | Dominic Ascione | `Mutators/{}Faster Sumo.tam` | `faster-sumo` | `faster-sumo` |
| 95 | Regeneration | not named (idea: MadRat) | `Mutators/}{regenmut.tam` | `regeneration` | `regeneration` |
| 61 | Tactical Strike | Immerman | `Mutators/{}TacticalStrike.tam` | `tactical-strike` | `tactical-strike` |
| 104 | [MAC] Maneuverable Boats (Arm) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Maneuverable Boats (Arm).tam` | `mac-maneuverable-boats-arm` | `maneuverable-boats`, side arm (`maneuverable-boats-arm`) |
| 105 | [MAC] Maneuverable Boats (Core) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Maneuverable Boats (Core).tam` | `mac-maneuverable-boats-core` | `maneuverable-boats`, side core (`maneuverable-boats-core`) |

Catalogue numbers are the rows in the legacy catalogue, section 5.1, and section 5.3 for Regeneration. Each package replaces that one original. The comparison of the same name is in `_verify/comparisons.tsv`: the curated package on the left, its import on the right.

## Differences from the originals

`exaggerated-sides.allowed` is the velocity test. The original's velocity test matched no unit, so it changed nothing; the curated version changes moving Arm and Core units. The file allows only the curated side's armour, top speed, turn rate, brake rate and acceleration (`left only field units/*.fbi [unitinfo]` for `maxdamage`, `maxvelocity`, `turnrate`, `brakerate` and `acceleration`). On 3.1c that is 152 units, 76 Arm and 76 Core.

`level-2-armour.allowed` is the exception. The original multiplied excluded units by 1.2 and then by 0.83333, leaving them at 0.999996 of their armour; the curated version leaves them unchanged. The comparison shows that remainder, so the file is kept: `right only field units/*.fbi [unitinfo] maxdamage: *`, 42 units. The curated report changes the net set of 50.

`fast-raiders.allowed` is the speed guard. The original's 1.6 slowed 3.1c's Stumpy; the curated version never slows a unit. The file allows one line, `right only field units/armstump.fbi [unitinfo] maxvelocity: 1.7 -> 1.6`. On 3.1c the curated report is header lines only. The two units are still chosen by name. A `named` block cannot also carry a need, so each rule tests `unitname` and the speed together.

`regeneration.allowed` is the Uberhack unit files. The original replaced whole Uberhack unit files, and the curated version changes only the healing fields (L03). The file allows one pattern per other field name, on the side the comparison shows (`right only field units/* [unitinfo] <field>: *`), plus the archive's added unit files (`right only file added units/*` and `right only unit added *`). It allows `healtime` only as exact lines, each with its unit and value, so any other healing value still fails the row. They are the 56 healing lines the two sides do not share: 21 mobile units this rule heals that the archive leaves out, 14 water structures and 17 added units the archive heals that this rule leaves out, and the spies (ARMSPY at 10, CORSPY at 12 in the archive, 40 here). The recorded report has 150 lines, each `healtime` set to 40, one per mobile unit that is not a commander. Commanders keep the base game's 27. The 18 water structures in the archive, and the rest of Uberhack's balance, are left out. The package stays the one heal-time rule.

Faster Sumo keeps the original absolute values, top speed 5 and turn rate 666, about fifteen times 3.1c's 0.34. The original's two blocks on CORSUMO are one rule. The comparison allows no difference, because the values are the same. Those two absolutes, and Faster Stumpy/Raiders' 1.6, are the only absolute speeds in this family.

MAC's Maneuverable Boats clamp turn rate at 29900. On 3.1c the fastest boat turns at 911, so four times that rate never reaches the clamp. The curated rule uses the same clamp for every side. The Arm and Core rows allow no other difference.

Hypermobile Builders 3x mentions a cap in a comment and never applies it. The curated rule applies none. Close Encounters and Tactical Strike keep every factor and clamp as written, including 0.333333333, 0.6666666666, 0.66666666, 0.83 and 2.0. Hypermobility 2x, Hypermobile Commanders 3x, Slower Units, 1.75 Speed Contruction KBots and Maneuverable Boats keep the original factors.

## Originals

| Title | Source under `originals/` | Import | Package and option | Comparison rows |
|---|---|---|---|---|
| [MAC] Agile Aircraft (Arm) | `igi-server/MAC's mutators/{}MAC Agile Aircraft (Arm).tam` | `mac-agile-aircraft-arm` | `agile-aircraft`, side arm, version classic | `agile-aircraft-arm-classic`, `agile-aircraft-classic` |
| [MAC] Agile Aircraft (Core) | `igi-server/MAC's mutators/{}MAC Agile Aircraft (Core).tam` | `mac-agile-aircraft-core` | `agile-aircraft`, side core, version classic | `agile-aircraft-core-classic`, `agile-aircraft-classic` |
| [MAC] Agile Aircraft II (Arm) | `igi-server/MAC's mutators/{}MAC Agile Aircraft II (Arm).tam` | `mac-agile-aircraft-ii-arm` | `agile-aircraft`, side arm | `agile-aircraft-arm` |
| [MAC] Agile Aircraft II (Core) | `igi-server/MAC's mutators/{}MAC Agile Aircraft II (Core).tam` | `mac-agile-aircraft-ii-core` | `agile-aircraft`, side core | `agile-aircraft-core` |
| [MAC] Agile Aircraft II | `igi-server/MAC's mutators/{}MAC Agile Aircraft II.tam` | `mac-agile-aircraft-ii` | `agile-aircraft` | `agile-aircraft` |
| [MAC] Bio-Armor (Arm) | `igi-server/MAC's mutators/{}MAC Bio-Armor (Arm).tam` | `mac-bio-armor-arm` | `bio-armor`, side arm | `bio-armor-arm` |
| [MAC] Bio-Armor (Core) | `igi-server/MAC's mutators/{}MAC Bio-Armor (Core).tam` | `mac-bio-armor-core` | `bio-armor`, side core | `bio-armor-core` |
| [MAC] Bio-Armor (Arm) (every side) | `igi-server/MAC's mutators/{}MAC Bio-Armor.tam` | `mac-bio-armor` | `bio-armor` | `bio-armor` |
| [MAC] Maneuverable Hovers | `igi-server/MAC's mutators/{}MAC Maneuverable Hovers.tam` | `mac-maneuverable-hovers` | `maneuverable-hovers` | `maneuverable-hovers` |
| [MAC] Real Hovers | `igi-server/MAC's mutators/{}MAC Real Hovers.tam` | `mac-real-hovers` | `real-hovers` | `real-hovers` |
| [MAC] Slippery Slopes | `igi-server/MAC's mutators/{}MAC Slippery Slopes.tam` | `mac-slippery-slopes` | `slippery-slopes` | `slippery-slopes` |
| [MAC] True VTOL Standby | `igi-server/MAC's mutators/{}MAC True VTOL Standby.tam` | `mac-true-vtol-standby` | `vtol-hover-standby` | `vtol-hover-standby` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it, except LOS_1600, which is a `}{` mutator with `}{MAC LOS_1600.ccx`.

## Differences from the originals

`agile-aircraft.allowed` records Agile Aircraft II's dead group. The original's first group needs `WorkerTime=""`, which no aircraft meets, so it changed no aircraft that does not build. The curated version changes them. The file allows `left only field units/*.fbi [unitinfo] maxvelocity: *`, and the same for `brakerate`, `acceleration`, `turnrate` and `bankscale`. The construction-aircraft group is unchanged, including the exclusion of the unit named HELPER. Core's Agile Aircraft II omitted that name. Total Annihilation 3.1c has no HELPER, so a comparison still matches, and this version always leaves HELPER alone. On 3.1c the version II report changes every aircraft's top speed, 30 lines, and 24 of those aircraft do not build. The faithful import's own report changes 6, the construction aircraft.

`real-hovers.allowed` records the dead cruise-altitude test. Under the maintainer's rule a hovercraft without `CruiseAlt` reads 0, so the original selected nothing. The curated version selects hovercraft without `CruiseAlt`. The file allows one `left only field units/*.fbi [unitinfo]` pattern for each field the comparison shows: `canhover`, `movementclass`, `canfly`, `tedclass`, `cruisealt`, `altfromsealevel`, `bankscale`, `maxvelocity`, `brakerate`, `acceleration`, `turnrate` and `ovradjust`. The rule also sets `defaultmissiontype` to Standby. Those 13 hovercraft already use Standby, so the report has no line for that field and the allowed file does not name it. The report's `cruisealt` lines are the 13 hovercraft.

Enhanced Builders leaves commanders out with `commander` 1 instead of the names ARMCOM and CORCOM. On 3.1c that is the same set. The decoy commanders have no commander flag, so both versions include them. The comparison rows allow no differences.

Super Commander keeps each side's numbers. Arm multiplies top speed by 7 and braking and acceleration by 49. Core multiplies top speed by 5 and braking and acceleration by 25. Both texts promise 500% more speed. Side all applies each copy to its own side. A commander of another side is left alone, as the two originals leave it.

Resources Easy Self-Destruct keeps the Arm transport change on the Transportable option, which defaults to no. The Arm comparison sets Transportable to yes. The Core comparison leaves it at no, and the Core rules do not set the transport fields.

Maneuverable Hovers keeps the rule's numbers. The text says top speeds stay unchanged. The rule sets bank scale to 0.7, multiplies top speed, braking and acceleration by 2.5, multiplies turn rate by 6, and sets the override adjust to 1. The comparison row allows no differences.

`{}MAC Bio-Armor.tam` and `{}MAC Incognito.tam` are titled "[MAC] Bio-Armor (Arm)" and "[MAC] Incognito (Arm)", the same titles as the Arm files. Their rows pass `--id`, and the import id is that id: `mac-bio-armor` and `mac-incognito`. Every other row writes `-` in the id column.

Useful Mines writes an empty yard map from the units hook. A rule that sets an empty value would remove the field, and the original sets `Yardmap` empty so the mines are hard to kill without area weapons. The original names `Category` twice, once for ` MINE` and once for `KAMIKAZE`. The Lua rules keep both tests as two needs on that field, and the hook uses the same two needs. The selection is the original's.

## Originals

| Title | Source under `originals/` | Import | Package and option | Map | Comparison row |
|---|---|---|---|---|---|
| [MAC] Fortified Forts & Walls | `igi-server/MAC's mutators/{}MAC Fortified Forts & Walls.tam` | `mac-fortified-forts-walls` | `fortified-forts` | `-` | `fortified-forts` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it. No package takes a file from the originals.

## Differences from the originals

`fortified-forts.allowed` allows one difference. Under the maintainer's rule a structure without DamageModifier reads 1.0, so the original's ×7 groups selected none; the curated version gives them the ×7 the original meant. The file allows `left only field units/*.fbi [unitinfo] maxdamage: *`. On 3.1c the comparison lists that line for 25 static weapons and nothing else. The six structures that already write a damage modifier, and the six dragon's-teeth features, change on both sides. A modifier written outside 0.00000001 to 1 still takes the sevenfold hit points, and one written inside that range is still multiplied by 0.07. The original's text says ten times. The rule says seven, and both the import and this version follow the rule. No other row needed a package fix: each comparison was empty. Heavy Metal needs no allowed file, and neither does any other row.

The feature packages walk every feature. Maxed Metalspots, No Fugly Scars and No Permanent Features each named 41 folders, one by one, and `folder` is not recursive. A 42nd, `features\Sealife`, is commented out in all three, because a misspelt feature name in that third-party set stopped TA: Mutation's parser; walking every feature includes it when a map pack or mod brings it. Twenty-four of those names are third-party sets 3.1c does not ship. The other seventeen are all of 3.1c's feature folders, so on 3.1c the same sections change. A map pack or a mod whose patches live in some other folder is changed too, which the named lists missed. Destructible Monorails named only `features/Urban`. The monorail choice still selects by the description Monorail, in any folder. Fortified Forts named `features/corpses` and `features/All Worlds` for the dragon's teeth. This version uses the same tooth test on every feature.

A scale that lands between whole numbers is floored in the curated packages. Water damage and the two wind speeds are stored as whole numbers. Weak acid takes a tenth of the damage and drops the fraction. Steady wind takes half again and drops the fraction, then applies the original clamps. The comparison maps are chosen so that tenth and that half again are already whole, and the rows still show the floored write.

Heavy Metal wrote `SurfaceMetal` and `MohoMetal` on the map header. No 3.1c map keeps either key there. Surface metal is read from each schema. The faithful import copies a header `SurfaceMetal` onto every schema and skips `MohoMetal`. This version writes `surfacemetal` on every schema, which is where the game reads it, and does not write `MohoMetal` anywhere. The game never reads `MohoMetal`.

No Scars removes `featuredead` and `featurereclamate` from every feature. A wreck's heap is the feature the first of those keys names, so a wreck leaves no heap either, as in the original.

## Maps the rows use

Acid Pools is an acid map: lava is off, water does damage, and water damage is 10, so a tenth is the whole number 1. Its wind is 2000 to 4000, so half again is a whole number before Steady Wind's clamps raise the minimum to 4000. It has one schema, whose surface metal is 3, so Heavy Metal's three levels are each one write. Lava Highground is a lava map: lava is on, and it has no water keys, so Passable Lava is the whole change. Temblorian Mist is fog rather than lava: the planet is not Lava, lava is on, water damage is 100 and the sea-level trigger is on. The five feature and unit rows do not change a map, so their map column is `-`.

## Notes from the families these packages came from

These sentences are the old families' own openings. The package counts in them are those families', and a folder they name is the one this grouping replaced.

### Movement and armour

Fourteen TA: Mutation movement and armour mutators, plus MAC (macraig)'s Arm and Core Maneuverable Boats. Each curated package is one folder here. `tools/build-packages` builds the faithful imports, from `_imports.tsv`, into `build/movement/_imports/`. Nothing taken from an original is stored in this folder.

The weapon blocks of Close Encounters and FasTA are Lua. The rules reference gives `on("weapons", "tdf")` for a weapon file and `["<AllDepth2>"]` for every damage value, so neither block is kept as an `.sm` file. No package in this family has a `rules/` folder.

### MAC's unit mutators

Sixteen packages replace the thirty-five unit-rule mutators MAC (macraig) wrote from 2003 to 2008. Arm, Core and every-side copies of one mutator are a Side choice on one package. Agile Aircraft's two designs are a Version choice. Enhanced LOS's three sight settings are a Sight choice, and the package ships the LOS_1600 table with every one of them. Easy Self-Destruct's Arm transport change is a Transportable choice.

### MAC's map and feature mutators

Nine packages replace the fourteen map and feature mutators MAC (macraig) wrote. Acid's two strengths, wind's two settings, Heavy Metal's three levels and the choice between every indestructible feature and the monorails are options. The map packages run in the maps phase, on the one map the match chose. Maxed Metalspots, No Scars and No Permanent Features declare `features` and do their work in a features hook. Fortified Forts keeps `units`, because its rules change wall and fort units by ted class, and fortifies dragon's teeth in a features hook.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" movement-and-armour
```

That prints `build: movement-and-armour: 26 imports, 18 packages`. Pack and check from `build/movement-and-armour`. Paths in `_verify/comparisons.tsv` are relative to that folder. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
