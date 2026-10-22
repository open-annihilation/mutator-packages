# Commanders

This group holds the mutators that change the commander: its weapons, radar, blast, model, resources and how it moves. Fifteen packages. Each original's author stays in the tables here and in the package's manifest.

## Originals

| Original | Author | Source | Import | Package | Option | Comparison rows |
|---|---|---|---|---|---|---|
| ÜberComm | Immerman | `Mutators/{}šberComm.tam` | `ubercomm` | `uber-comm` | strength full | `uber-comm-full` |
| PowerComm | Immerman | `Mutators/{}PowerComm.tam` | `powercomm` | `uber-comm` | strength lite | `uber-comm-lite` |
| Advanced Radar Comm | Drinken | `Mutators/{}AdvRadarComm.tam` | `advanced-radar-comm` | `commander-radar` | radar advanced | `commander-radar-advanced` |
| No Radar Comm | Drinken | `Mutators/{}NoRadarComm.tam` | `no-radar-comm` | `commander-radar` | radar none | `commander-radar-none` |
| AnniComm | Drinken | `Mutators/{}AnniComm.tam` | `annicomm` | `anni-comm` | — | `anni-comm` |
| Special Tech Comm | Drinken | `Mutators/{}SpecialTechComm.tam` | `special-tech-comm` | `special-tech-comm` | — | `special-tech-comm` |
| AutotargetComm | ATRCaptainKirk | `Mutators/{}AutotargetComm.tam` | `autotargetcomm` | `autotarget-comm` | — | `autotarget-comm` |
| No Rampage-Comm | Drinken | `Mutators/{}No_RampageComm.tam` | `no-rampage-comm` | `no-rampage-comm` | — | `no-rampage-comm` |
| Reduced Commander Blast (OTA) | Quitch(y) | `Mutators/}{CommBlastOTA.tam` | `reduced-commander-blast-ota` | `commander-blast` | — | `commander-blast` |
| Reduced Commander Blast (UH) | Quitch(y) | `Mutators/}{CommBlastUH.tam` | `reduced-commander-blast-uh` | `commander-blast` | — | none (see below) |
| KroggyComm 1.1 | Immerman | `Mutators/}{KroggyComm11.tam` | `kroggycomm-1-1` | `kroggy-comm` | — | `kroggy-comm` |
| RavenFire's Core Com Model | RavenFire | `Mutators/}{RFCoreComModel.tam` | `ravenfire-s-core-com-model` | `ravenfire-core-commander` | — | `ravenfire-core-commander` |
| Tribe Commander | Zapper (ACUT) | `Mutators/}{Tribe.tam` | `tribe-commander` | `tribe-commander` | — | `tribe-commander` |

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. Uberhack and the other mods named in the compatibility codes have no OA id, so those codes stay on the legacy record.

## Files

Each hash is the SHA-256 of the archive entry. The file under `files/` is those bytes. `scripts/KroggyCom.bos` is the script source, which the game never reads, and `features/corpses/Corkrog_dead.tdf` is an unchanged copy of Core Contingency's corpse, so neither ships. The Core commander script is stored in the archive as `scripts/Corcom.cob` and placed at `files/scripts/corcom.cob`. Tribe's script is stored as `scripts/armcom.COB` and placed at `files/scripts/armcom.cob`.

### kroggy-comm

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/objects3d/KROGCOM.3do` | `Mutators/}{KroggyComm11.ccx` | `objects3d/KROGCOM.3do` | `fc319c1030fdf813241c3804ecb49482ce2519c4d42f5ab9e1c8dddb675136fd` |
| `files/scripts/armcom.cob` | `Mutators/}{KroggyComm11.ccx` | `scripts/armcom.cob` | `978353bdc78ebe9e1860109af5539ffcfc442e001d6f166c4b8240792e5f724c` |
| `files/scripts/corcom.cob` | `Mutators/}{KroggyComm11.ccx` | `scripts/Corcom.cob` | `978353bdc78ebe9e1860109af5539ffcfc442e001d6f166c4b8240792e5f724c` |

### ravenfire-core-commander

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/objects3d/corcom.3do` | `Mutators/}{RFCoreComModel.ccx` | `objects3d/corcom.3do` | `89cfb0fa5db26cfaec3b85cc6edcb52cc15599a246ae5748958524cc487b98c8` |
| `files/objects3d/cordecom.3do` | `Mutators/}{RFCoreComModel.ccx` | `objects3d/cordecom.3do` | `89cfb0fa5db26cfaec3b85cc6edcb52cc15599a246ae5748958524cc487b98c8` |

### tribe-commander

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/objects3d/tribcom.3do` | `Mutators/}{Tribe.ccx` | `objects3d/tribcom.3do` | `dcbd08e1aa70287a1ac294f933c7f40da74e71af5de3c2753243014e0b3cfc28` |
| `files/scripts/armcom.cob` | `Mutators/}{Tribe.ccx` | `scripts/armcom.COB` | `3e2ab51c7b869591ac0a0eb6fc4203779c06f53bac525c4ca7ec315c4504a1ce` |

The two KroggyComm scripts are one file stored twice, so they share a hash. The two RavenFire models are one model stored twice. KroggyComm's `armcom.cob` and `corcom.cob` change ARMCOM and CORCOM by those names, and Tribe's `armcom.cob` changes ARMCOM by that name. Each of those packages says so in its description. The three packages add `files` in the plan so the Files layer serves the models and scripts.

## Differences from the originals

Each allowed file names only the differences the comparison printed. No curated package needed a change: every other difference matched the import.

- `no-rampage-comm.allowed`: The original replaced the commanders' no-chase list; the curated version adds WEAPON to it. No Rampage-Comm set `NoChaseCategory` to `WEAPON` and threw away the rest of the list, so a 3.1c commander (`VTOL`) began chasing aircraft. The curated hook adds the token `WEAPON` when it is not already there, keeping the tokens the unit has (`VTOL` becomes `VTOL WEAPON`). The comparison shows that pair on ARMCOM and on CORCOM.
- `commander-blast.allowed`: The original's unit files were cut from older OTA data: they revert 3.1c's categories and target lists, drop OvrAdjust and give Core's commander Arm's disintegrator; the curated version changes only the blasts. The comparison shows `Category`, `BadTargetCategory`, `NoChaseCategory`, `wpri_badtargetcategory` and `wspe_badtargetcategory` changed on both commanders, `OvrAdjust` dropped, and Core's weapon 3 becoming `ARM_DISINTEGRATOR`. `wpri_badtargetcategory` moves from `VTOL` to `CTRL_V`, the same way `NoChaseCategory` does; `wspe_badtargetcategory` is added as `CTRL_V`. The curated package sets only `ExplodeAs` and `SelfDestructAs` to `ATOMIC_BLAST`.
- `kroggy-comm.allowed`: 3.1c fields the 2001 unit files predate; the curated version keeps 3.1c's. The comparison shows the import dropping `HealTime`, `OvrAdjust` and `DefaultMissionType` on both commanders, and nothing else among the unit fields. The 2001 files do not drop the localized names, so those are not an allowed difference. The script's source, which the game never reads, is the import's added `scripts/kroggycom.bos`; the curated package leaves it out. Every other field the files add or change is a rule, with the file's own value: object name `KROGCOM`; weapons `CORKROG_FIRE`, `CORKROG_ROCKET` and `CORKROG_HEAD`; `MaxDamage` 29918; `BuildCostEnergy` 116664; `BuildCostMetal` 29489; `BuildTime` 382193; `EnergyMake` 32; `BuildDistance` 120; footprint 3×3; `MovementClass` `TANKDH3`; `ExplodeAs` and `SelfDestructAs` `NUCLEAR_MISSILE`; `OnOffable` 1; `EnergyUse` 7; corpse `corkrog_dead`; `CantBeTransported` 1; `Downloadable` 1; `NoAutoFire` 0; acceleration 0.09; brake 0.19; `MaxVelocity` 1; `TurnRate` 960; `MaxSlope` 17; `MaxWaterDepth` 12; `SightDistance` 255. The Arm file's sound category becomes `KROGOTH`. The Core file keeps `CORE_COM`, so only ARMCOM's sound category is set. The cloak fields (`CloakCost`, `CloakCostMoving`, `MinCloakDistance`) and the bad-target fields (`BadTargetCategory`, `wpri_badtargetcategory`) are removed, which is the Krogoth's design.
- `tribe-commander.allowed`: The original's whole unit file was cut from older data and lost the commander flag and the other fields 3.1c added; the curated version changes only the model. The comparison shows the import removing `Commander`, `ShowPlayerName`, `MinCloakDistance`, `OvrAdjust`, `SpanishName`, `SpanishDescription`, `ItalianName` and `ItalianDescription`. Losing `Commander` changes how the game ends. The curated package sets only the model name, so `Commander` stays 1.

`commander-radar` tests `commander` 1 and `bmcode` 1. Advanced Radar Comm and No Radar Comm tested only `Commander=1`, so with Warp Gate 3.1 they also changed the gates, which carry that flag. On 3.1c alone the two selectors match the same units, so nothing differs. The option's label is Radar; the originals had no label to copy.

Conflicts, because the packages write the same commander fields or the same script file:

- `anni-comm`, `special-tech-comm` and `kroggy-comm` each set weapon 1, so each conflicts with the others.
- `commander-blast` and `kroggy-comm` each set `ExplodeAs` and `SelfDestructAs`.
- `kroggy-comm` and `tribe-commander` each ship `files/scripts/armcom.cob` and rebind the Arm commander's model.

## Reduced Commander Blast (UH)

Reduced Commander Blast (UH) has no comparison row. Its commander files carry Uberhack's balance (costs, `Amphibious`, sight and the rest), so a comparison with 3.1c does not describe the mutator. `commander-blast` still replaces that original. The OTA row is the comparison that means something on 3.1c, and the two archives differ only in the old data they were cut from. No comparison uses that import, so `_imports.tsv` does not list `reduced-commander-blast-uh`.

## Originals

| Title | Author | Source under `originals/` | Import | Package and option | Comparison rows |
|---|---|---|---|---|---|
| No Waste | Recon | `Mutators/{}NoWaste.tam` | `no-waste` | `no-waste` | `no-waste` |
| ResourceComm | Drinken | `Mutators/{}ResourceComm.tam` | `resourcecomm` | `resource-comm`, level standard | `resource-comm-standard`, `resource-comm-both` |
| ResourceComm Deluxe | Drinken | `Mutators/{}ResourceComm_dlx.tam` | `resourcecomm-deluxe` | `resource-comm`, level deluxe | `resource-comm-deluxe`, `resource-comm-both` |
| Armdecom | Havoc | `Mutators/{}Armdecom.tam` | `armdecom` | `armdecom` | `armdecom` |

Factor 8 on Quick Build and on Jumbo Storage is what the 2x and 4x originals gave together. Factor 3 on Seaplane Platform Speed is what the x1.5 and x2 originals gave together. Level `both` on Resource Commander is what ResourceComm and ResourceComm Deluxe gave together: locked values average, and the build-distance and worker-time factors multiply. The option `level` is labelled Level, which the manifest requires.

## Differences from the originals

`resource-comm-both.allowed`: Resource Commander's `both` choice keeps the averages TA: Mutation gave players who stacked both originals, 2500 energy, 7500 energy storage, 125 metal and 2500 metal storage on ARMCOM and CORCOM. Open Annihilation runs the two imports in sequence, so the first lock holds at 1000 energy, 3000 energy storage, 50 metal and 1000 metal storage. The allowance is those four fields on ARMCOM and CORCOM, on each side of the comparison. Build distance still ends at 3 times and worker time at 6 times, because the factors multiply.

Enhanced Wind Generators no longer tests the English name "Wind Generator". A structure with `bmcode` 0 and `windgenerator` from 1 to 1e7 matches, so a translated or modded generator counts. On Total Annihilation 3.1c with both expansions the same two units match: ARMWIN and CORWIN.

No Porc and No Resource System remove units with `remove()` instead of a blank copyright line. No Porc still clears `metalmake` from 0.01 to 10. No Resource System keeps the original's name and description tests, which aim at third-party units if they are installed: a name containing "Fusion Reactor", a name containing "AI ", and the description "Highly unstable Rock to Metal subatomic converter". A written cloak cost is `has("")`, the original's `CloakCost=""*`. `absent()` is already a negated need, so `not_(absent())` does not run.

No Waste stores 1900000 metal and 1900000 energy. The original text says a million. The package keeps the numbers the rule file wrote.

Level 2 Discount replaces the forty-three Uberhack 2.0 unit files with one rule: `category` contains LEVEL2, `bmcode` is 1, and the unit is not a builder, an aircraft, a floater, a hovercraft or TED class WATER. Costs and build time are multiplied by 0.7. The hand-picked forty-three also held the decoy commanders (ARMDECOM, CORDECOM), the seaplane CORSEAP, and Uberhack's construction Freaker (a builder filed as CORFAST). On 3.1c with both expansions the rule selects these 42 level-2 units:

ARMASER, ARMBULL, ARMCROC, ARMFAST, ARMFIDO, ARMJAM, ARMLATNK, ARMMANNI, ARMMARK, ARMMART, ARMMAV, ARMMERL, ARMSAM, ARMSCORP, ARMSEER, ARMSNIPE, ARMSPID, ARMSPY, ARMVADER, ARMYORK, ARMZEUS, CORAMPH, CORCAN, CORETER, CORFAST, CORGOL, CORHRK, CORKROG, CORMART, CORMIST, CORPYRO, CORROACH, CORSCORP, CORSEAL, CORSENT, CORSHARK, CORSPEC, CORSPY, CORSUMO, CORVOYR, CORVRAD, CORVROC.

Seaplane Platform Speed and Advanced Sub Reach and Arm Decoy Commander name units, as the originals do: ARMPLAT and CORPLAT, ARMACSUB and CORACSUB, and ARMDECOM. Armdecom sets worker time to 999. On 3.1c the Arm decoy's worker time is 30.

## The fourteen originals

| Catalogue | Original | Author | Source | Import | Package |
|---|---|---|---|---|---|
| 32 | Hypermobile Commanders 3x | Immerman | `Mutators/{}HyperComms3x.tam` | `hypermobile-commanders-3x` | `hypermobile-commanders` |

Catalogue numbers are the rows in the legacy catalogue, section 5.1, and section 5.3 for Regeneration. Each package replaces that one original. The comparison of the same name is in `_verify/comparisons.tsv`: the curated package on the left, its import on the right.

## Differences from the originals

Faster Sumo keeps the original absolute values, top speed 5 and turn rate 666, about fifteen times 3.1c's 0.34. The original's two blocks on CORSUMO are one rule. The comparison allows no difference, because the values are the same. Those two absolutes, and Faster Stumpy/Raiders' 1.6, are the only absolute speeds in this family.

MAC's Maneuverable Boats clamp turn rate at 29900. On 3.1c the fastest boat turns at 911, so four times that rate never reaches the clamp. The curated rule uses the same clamp for every side. The Arm and Core rows allow no other difference.

Hypermobile Builders 3x mentions a cap in a comment and never applies it. The curated rule applies none. Close Encounters and Tactical Strike keep every factor and clamp as written, including 0.333333333, 0.6666666666, 0.66666666, 0.83 and 2.0. Hypermobility 2x, Hypermobile Commanders 3x, Slower Units, 1.75 Speed Contruction KBots and Maneuverable Boats keep the original factors.

## Originals

| Title | Source under `originals/` | Import | Package and option | Comparison rows |
|---|---|---|---|---|
| [MAC] Super Commander (Arm) | `igi-server/MAC's mutators/{}MAC Super Commander (Arm).tam` | `mac-super-commander-arm` | `super-commander`, side arm | `super-commander`, `super-commander-arm` |
| [MAC] Super Commander (Core) | `igi-server/MAC's mutators/{}MAC Super Commander (Core).tam` | `mac-super-commander-core` | `super-commander`, side core | `super-commander`, `super-commander-core` |

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

### Commanders

Ten packages replace the thirteen TA: Mutation commander mutators. ÜberComm and PowerComm share one strength choice, the two radar mutators share one radar choice, and the two commander-blast archives share one blast rule. Five originals shipped whole unit files or models. The stat changes are rules. Models and scripts stay files in the package's `files/`. Files lists each path, the archive and entry it came from, and its SHA-256.

### Economy and build

Thirteen packages replace the eighteen TA: Mutation economy and build mutators. MAC (macraig)'s eight one-side copies of Cornucopia, Cost Cutter, Jumbo Storage and Enhanced Wind Generators are options on those packages. Variants of one mutator are options on one package. Every rule is Lua. No package takes a file from the originals.

### Movement and armour

Fourteen TA: Mutation movement and armour mutators, plus MAC (macraig)'s Arm and Core Maneuverable Boats. Each curated package is one folder here. `tools/build-packages` builds the faithful imports, from `_imports.tsv`, into `build/movement/_imports/`. Nothing taken from an original is stored in this folder.

The weapon blocks of Close Encounters and FasTA are Lua. The rules reference gives `on("weapons", "tdf")` for a weapon file and `["<AllDepth2>"]` for every damage value, so neither block is kept as an `.sm` file. No package in this family has a `rules/` folder.

### MAC's unit mutators

Sixteen packages replace the thirty-five unit-rule mutators MAC (macraig) wrote from 2003 to 2008. Arm, Core and every-side copies of one mutator are a Side choice on one package. Agile Aircraft's two designs are a Version choice. Enhanced LOS's three sight settings are a Sight choice, and the package ships the LOS_1600 table with every one of them. Easy Self-Destruct's Arm transport change is a Transportable choice.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" commanders
```

That prints `build: commanders: 19 imports, 15 packages`. Pack and check from `build/commanders`. Paths in `_verify/comparisons.tsv` are relative to that folder. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
