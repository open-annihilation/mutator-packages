# Movement and armour

Fourteen TA: Mutation movement and armour mutators. Each curated package is one folder here. `tools/build-packages` builds the faithful imports, from `_imports.tsv`, into `build/movement/_imports/`. Nothing taken from an original is stored in this folder.

The weapon blocks of Close Encounters and FasTA are Lua. The rules reference gives `on("weapons", "tdf")` for a weapon file and `["<AllDepth2>"]` for every damage value, so neither block is kept as an `.sm` file. No package in this family has a `rules/` folder.

## The fourteen originals

| Catalogue | Original | Author | Source | Import | Package |
|---|---|---|---|---|---|
| 33 | Hypermobility 2x | Immerman | `Mutators/{}HyperMobility2x.tam` | `hypermobility-2x` | `hypermobility` |
| 31 | Hypermobile Builders 3x | Immerman | `Mutators/{}HyperBuilders3x.tam` | `hypermobile-builders-3x` | `hypermobile-builders` |
| 32 | Hypermobile Commanders 3x | Immerman | `Mutators/{}HyperComms3x.tam` | `hypermobile-commanders-3x` | `hypermobile-commanders` |
| 56 | Slower Units | Drinken | `Mutators/{}SlowerUnits.tam` | `slower-units` | `slower-units` |
| 14 | 1.75 Speed Contruction KBots | ATRCaptainKirk | `Mutators/{}ConBotSpeedx1,75.tam` | `1-75-speed-contruction-kbots` | `conbot-speed` |
| 37 | Maneuverable Boats | uncredited (TA: Mutation standard pack) | `Mutators/{}ManeuverableBoats.tam` | `maneuverable-boats` | `maneuverable-boats` |
| 22 | Exaggerated Sides | uncredited (standard pack) | `Mutators/{}ExaggeratedSides.tam` | `exaggerated-sides` | `exaggerated-sides` |
| 36 | Level 2 Armour x 1.2 | ATRCaptainKirk | `Mutators/{}L2Armourx1,2.tam` | `level-2-armour-x-1-2` | `level-2-armour` |
| 24 | Faster Stumpy/Raiders | uncredited (S-Mutators only) | `S-Mutators/FastStumpy_mutator.zip` | `faster-stumpy-raiders` | `fast-raiders` |
| 25 | Faster Sumo | Dominic Ascione | `Mutators/{}Faster Sumo.tam` | `faster-sumo` | `faster-sumo` |
| 95 | Regeneration | not named (idea: MadRat) | `Mutators/}{regenmut.tam` | `regeneration` | `regeneration` |
| 23 | FasTA | ATRCaptainKirk | `Mutators/{}FasTA.tam` | `fasta` | `fasta` |
| 13 | Close Encounters | Immerman | `Mutators/{}CloseEncounters.tam` | `close-encounters` | `close-encounters` |
| 61 | Tactical Strike | Immerman | `Mutators/{}TacticalStrike.tam` | `tactical-strike` | `tactical-strike` |

Catalogue numbers are the rows in the legacy catalogue, section 5.1, and section 5.3 for Regeneration. Each package replaces that one original. The comparison of the same name is in `_verify/comparisons.tsv`: the curated package on the left, its import on the right.

## Differences from the originals

`exaggerated-sides.allowed`, when L18 writes it, is the velocity test. The original requires a top speed from 0 to 0.001 together with a mobile unit, and that matches nothing. The curated rule uses the same groups with the test negated, so a moving unit matches.

`level-2-armour.allowed`, when L18 writes it, is the exception. The original multiplies every mobile level-2 unit by 1.2 and then multiplies aircraft, floaters, hovercraft and TED class WATER by 0.83333. The product is not exactly 1, and a unit in two of those groups would be cut twice. The curated rule is one selector that never touches those groups, and it sets armour to 1.2 only on the rest. L18 drops the allowed file, and sets this row's `allowed` column to `-`, if the comparison shows no difference.

`fast-raiders.allowed` is the speed guard. The original sets ARMSTUMP and CORRAID to a top speed of 1.6, which slows 3.1c's Stumpy (1.7) and leaves the Raider (1.6) as it is. The curated rule sets 1.6 only where the current top speed is from 0 to 1.6, so it never slows a unit. On 3.1c it changes nothing. The two units are still chosen by name. A `named` block cannot also carry a need, so each rule tests `unitname` and the speed together.

`fasta.allowed` is the reload field. The original multiplies `reload`, and no weapon has that field, so weapons do not fire faster. The curated rule multiplies `reloadtime` by the same 0.5. The other weapon factors are the original's, including damage through `<AllDepth2>`.

Regeneration's comparison allows nothing (`allowed` is `-`). The import is 160 Uberhack unit files. The curated package does not ship them. It is one rule: a mobile unit that is not a commander gets heal time 40, and no other field changes. Commanders keep the base game's 27. The 18 water structures in the archive, and the rest of Uberhack's balance, are left out. L18 checks that report.

Faster Sumo keeps the original absolute values, top speed 5 and turn rate 666, about fifteen times 3.1c's 0.34. The original's two blocks on CORSUMO are one rule. The comparison allows no difference, because the values are the same. Those two absolutes, and Faster Stumpy/Raiders' 1.6, are the only absolute speeds in this family.

Hypermobile Builders 3x mentions a cap in a comment and never applies it. The curated rule applies none. Close Encounters and Tactical Strike keep every factor and clamp as written, including 0.333333333, 0.6666666666, 0.66666666, 0.83 and 2.0. Hypermobility 2x, Hypermobile Commanders 3x, Slower Units, 1.75 Speed Contruction KBots and Maneuverable Boats keep the original factors.
