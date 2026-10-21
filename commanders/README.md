# Commanders

Ten packages replace the thirteen TA: Mutation commander mutators. ÜberComm and PowerComm share one strength choice, the two radar mutators share one radar choice, and the two commander-blast archives share one blast rule. Five originals shipped whole unit files or models. The stat changes are rules. Models and scripts stay files in the package's `files/`. Files lists each path, the archive and entry it came from, and its SHA-256.

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

Reduced Commander Blast (UH) has no comparison row. Its commander files carry Uberhack's balance (costs, `Amphibious`, sight and the rest), so a comparison with 3.1c does not describe the mutator. `commander-blast` still replaces that original. The OTA row is the comparison that means something on 3.1c, and the two archives differ only in the old data they were cut from.
