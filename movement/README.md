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

`exaggerated-sides.allowed` is the velocity test. The original's velocity test matched no unit, so it changed nothing; the curated version changes moving Arm and Core units. The file allows only the curated side's armour, top speed, turn rate, brake rate and acceleration (`left only field units/*.fbi [unitinfo]` for `maxdamage`, `maxvelocity`, `turnrate`, `brakerate` and `acceleration`). On 3.1c that is 152 units, 76 Arm and 76 Core.

`level-2-armour.allowed` is the exception. The original multiplied excluded units by 1.2 and then by 0.83333, leaving them at 0.999996 of their armour; the curated version leaves them unchanged. The comparison shows that remainder, so the file is kept: `right only field units/*.fbi [unitinfo] maxdamage: *`, 42 units. The curated report changes the net set of 50.

`fast-raiders.allowed` is the speed guard. The original's 1.6 slowed 3.1c's Stumpy; the curated version never slows a unit. The file allows one line, `right only field units/armstump.fbi [unitinfo] maxvelocity: 1.7 -> 1.6`. On 3.1c the curated report is header lines only. The two units are still chosen by name. A `named` block cannot also carry a need, so each rule tests `unitname` and the speed together.

`fasta.allowed` is the reload field. The original named a field no weapon has (`reload`); the curated version halves `reloadtime`. The file allows `left only field weapons/* reloadtime: *` and nothing else. The other weapon factors are the original's, including damage through `<AllDepth2>`.

`regeneration.allowed` is the Uberhack unit files. The original replaced whole Uberhack unit files, and the curated version changes only the healing fields (L03). The file allows one pattern per other field name, on the side the comparison shows (`right only field units/* [unitinfo] <field>: *`), plus the archive's added unit files (`right only file added units/*` and `right only unit added *`). It does not allow `healtime`. The comparison still lists the healing lines the two sides do not share: mobile units this rule heals that the archive leaves out, structures and added units the archive heals that this rule leaves out, and the spies (ARMSPY at 10, CORSPY at 12 in the archive, 40 here). The recorded report has 150 lines, each `healtime` set to 40, one per mobile unit that is not a commander. Commanders keep the base game's 27. The 18 water structures in the archive, and the rest of Uberhack's balance, are left out. The package stays the one heal-time rule.

Faster Sumo keeps the original absolute values, top speed 5 and turn rate 666, about fifteen times 3.1c's 0.34. The original's two blocks on CORSUMO are one rule. The comparison allows no difference, because the values are the same. Those two absolutes, and Faster Stumpy/Raiders' 1.6, are the only absolute speeds in this family.

Hypermobile Builders 3x mentions a cap in a comment and never applies it. The curated rule applies none. Close Encounters and Tactical Strike keep every factor and clamp as written, including 0.333333333, 0.6666666666, 0.66666666, 0.83 and 2.0. Hypermobility 2x, Hypermobile Commanders 3x, Slower Units, 1.75 Speed Contruction KBots and Maneuverable Boats keep the original factors.
