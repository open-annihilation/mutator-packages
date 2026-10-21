# Economy and build

Thirteen packages replace the eighteen TA: Mutation economy and build mutators. MAC (macraig)'s eight one-side copies of Cornucopia, Cost Cutter, Jumbo Storage and Enhanced Wind Generators are options on those packages. Variants of one mutator are options on one package. Every rule is Lua. No package takes a file from the originals.

`originals/` and `build/` are gitignored. The commands below build the faithful imports and the curated packages under `build/economy/`. The comparisons and their reports are in `_verify/`.

## Originals

| Title | Author | Source under `originals/` | Import | Package and option | Comparison rows |
|---|---|---|---|---|---|
| Cornucopia 2x | Immerman | `Mutators/{}Cornucopia2x.tam` | `cornucopia-2x` | `cornucopia` | `cornucopia` |
| Cost Cutter 1/2 | Immerman | `Mutators/{}CostCutter1_2.tam` | `cost-cutter-1-2` | `cost-cutter` | `cost-cutter` |
| QuickBuild 2x | Immerman | `Mutators/{}QuickBuild2x.tam` | `quickbuild-2x` | `quick-build`, factor 2 | `quick-build-2`, `quick-build-8` |
| QuickBuild 4x | Immerman | `Mutators/{}QuickBuild4x.tam` | `quickbuild-4x` | `quick-build`, factor 4 | `quick-build-4`, `quick-build-8` |
| Jumbo Storage 2x | Immerman | `Mutators/{}JumboStorage2x.tam` | `jumbo-storage-2x` | `jumbo-storage`, factor 2 | `jumbo-storage-2`, `jumbo-storage-8` |
| Jumbo Storage 4x | Immerman | `Mutators/{}JumboStorage4x.tam` | `jumbo-storage-4x` | `jumbo-storage`, factor 4 | `jumbo-storage-4`, `jumbo-storage-8` |
| Enhanced Wind Generators | Immerman | `Mutators/{}EnhancedWindGenerators.tam` | `enhanced-wind-generators` | `enhanced-wind` | `enhanced-wind` |
| No Porc | Drinken | `Mutators/{}NoPorc.tam` | `no-porc` | `no-porc` | `no-porc` |
| No Resource System | Drinken | `Mutators/{}NoResourceSystem.tam` | `no-resource-system` | `no-resource-system` | `no-resource-system` |
| No Waste | Recon | `Mutators/{}NoWaste.tam` | `no-waste` | `no-waste` | `no-waste` |
| ResourceComm | Drinken | `Mutators/{}ResourceComm.tam` | `resourcecomm` | `resource-comm`, level standard | `resource-comm-standard`, `resource-comm-both` |
| ResourceComm Deluxe | Drinken | `Mutators/{}ResourceComm_dlx.tam` | `resourcecomm-deluxe` | `resource-comm`, level deluxe | `resource-comm-deluxe`, `resource-comm-both` |
| SeaplanePlatform_WTx1,5 | Drinken | `Mutators/{}SPP_WTx1,5.tam` | `seaplaneplatform-wtx1-5` | `seaplane-platform-speed`, factor 1.5 | `seaplane-platform-speed-1.5`, `seaplane-platform-speed-3` |
| SeaplanePlatform_WTx2 | Drinken | `Mutators/{}SPP_WTx2.tam` | `seaplaneplatform-wtx2` | `seaplane-platform-speed`, factor 2 | `seaplane-platform-speed-2`, `seaplane-platform-speed-3` |
| SeaplanePlatform_WTx4 | Drinken | `Mutators/{}SPP_WTx4.tam` | `seaplaneplatform-wtx4` | `seaplane-platform-speed`, factor 4 | `seaplane-platform-speed-4` |
| AdvConstructionSub_BDx1,5 | Drinken | `Mutators/{}acsub_bdx1,5.tam` | `advconstructionsub-bdx1-5` | `advanced-sub-reach` | `advanced-sub-reach` |
| Armdecom | Havoc | `Mutators/{}Armdecom.tam` | `armdecom` | `armdecom` | `armdecom` |
| Level 2 Cost Reduc. | Unknown (idea: Quitch(y) and Zeppelin) | `Mutators/}{level2mut.tam` (with `Mutators/}{level2mut.ccx`) | `level-2-cost-reduc` | `level-2-discount` | `level-2-discount` (no import to compare) |
| [MAC] Cornucopia 200% (Arm) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Cornucopia 200% (Arm).tam` | `mac-cornucopia-200-arm` | `cornucopia`, side arm | `cornucopia-arm` |
| [MAC] Cornucopia 200% (Core) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Cornucopia 200% (Core).tam` | `mac-cornucopia-200-core` | `cornucopia`, side core | `cornucopia-core` |
| [MAC] Cost Cutter 50% (Arm) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Cost Cutter 50% (Arm).tam` | `mac-cost-cutter-50-arm` | `cost-cutter`, side arm | `cost-cutter-arm` |
| [MAC] Cost Cutter 50% (Core) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Cost Cutter 50% (Core).tam` | `mac-cost-cutter-50-core` | `cost-cutter`, side core | `cost-cutter-core` |
| [MAC] Jumbo Storage 200% (Arm) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Jumbo Storage 200% (Arm).tam` | `mac-jumbo-storage-200-arm` | `jumbo-storage`, factor 2, side arm | `jumbo-storage-2-arm` |
| [MAC] Jumbo Storage 200% (Core) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Jumbo Storage 200% (Core).tam` | `mac-jumbo-storage-200-core` | `jumbo-storage`, factor 2, side core | `jumbo-storage-2-core` |
| [MAC] Enhanced Wind Generators (Arm) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Enhanced Wind Generators (Arm).tam` | `mac-enhanced-wind-generators-arm` | `enhanced-wind`, side arm | `enhanced-wind-arm` |
| [MAC] Enhanced Wind Generators (Core) | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Enhanced Wind Generators (Core).tam` | `mac-enhanced-wind-generators-core` | `enhanced-wind`, side core | `enhanced-wind-core` |

Factor 8 on Quick Build and on Jumbo Storage is what the 2x and 4x originals gave together. Factor 3 on Seaplane Platform Speed is what the x1.5 and x2 originals gave together. Level `both` on Resource Commander is what ResourceComm and ResourceComm Deluxe gave together: locked values average, and the build-distance and worker-time factors multiply. The option `level` is labelled Level, which the manifest requires.

## Differences from the originals

`cornucopia.allowed`: Cornucopia 2x never doubled tidal generators; the curated version does (ARMTIDE and CORTIDE). The allowance is `left only field units/*.fbi [unitinfo] tidalgenerator: *`, and the report shows ARMTIDE and CORTIDE, each `tidalgenerator` from 1 to 2. `MakesEnergy` is left out: no unit has that field, and scaling an absent field changes nothing. The same file covers MAC's one-side copies: the Arm row matches ARMTIDE only, and the Core row matches CORTIDE only.

`resource-comm-both.allowed`: Resource Commander's `both` choice keeps the averages TA: Mutation gave players who stacked both originals, 2500 energy, 7500 energy storage, 125 metal and 2500 metal storage on ARMCOM and CORCOM. Open Annihilation runs the two imports in sequence, so the first lock holds at 1000 energy, 3000 energy storage, 50 metal and 1000 metal storage. The allowance is those four fields on ARMCOM and CORCOM, on each side of the comparison. Build distance still ends at 3 times and worker time at 6 times, because the factors multiply.

Enhanced Wind Generators no longer tests the English name "Wind Generator". A structure with `bmcode` 0 and `windgenerator` from 1 to 1e7 matches, so a translated or modded generator counts. On Total Annihilation 3.1c with both expansions the same two units match: ARMWIN and CORWIN.

No Porc and No Resource System remove units with `remove()` instead of a blank copyright line. No Porc still clears `metalmake` from 0.01 to 10. No Resource System keeps the original's name and description tests, which aim at third-party units if they are installed: a name containing "Fusion Reactor", a name containing "AI ", and the description "Highly unstable Rock to Metal subatomic converter". A written cloak cost is `has("")`, the original's `CloakCost=""*`. `absent()` is already a negated need, so `not_(absent())` does not run.

No Waste stores 1900000 metal and 1900000 energy. The original text says a million. The package keeps the numbers the rule file wrote.

Level 2 Discount replaces the forty-three Uberhack 2.0 unit files with one rule: `category` contains LEVEL2, `bmcode` is 1, and the unit is not a builder, an aircraft, a floater, a hovercraft or TED class WATER. Costs and build time are multiplied by 0.7. The hand-picked forty-three also held the decoy commanders (ARMDECOM, CORDECOM), the seaplane CORSEAP, and Uberhack's construction Freaker (a builder filed as CORFAST). On 3.1c with both expansions the rule selects these 42 level-2 units:

ARMASER, ARMBULL, ARMCROC, ARMFAST, ARMFIDO, ARMJAM, ARMLATNK, ARMMANNI, ARMMARK, ARMMART, ARMMAV, ARMMERL, ARMSAM, ARMSCORP, ARMSEER, ARMSNIPE, ARMSPID, ARMSPY, ARMVADER, ARMYORK, ARMZEUS, CORAMPH, CORCAN, CORETER, CORFAST, CORGOL, CORHRK, CORKROG, CORMART, CORMIST, CORPYRO, CORROACH, CORSCORP, CORSEAL, CORSENT, CORSHARK, CORSPEC, CORSPY, CORSUMO, CORVOYR, CORVRAD, CORVROC.

3.1c's CORFAST is the combat Freaker, not a builder, so the rule includes it. CORSHARK is a submarine (TED class SHIP). The rule excludes TED class WATER and still includes it. The files also name ARMAMPH, which hovers, CORMORT and CORREAP, which are level 1 on 3.1c, and ARMREF, ARMSPTK, ARMST and CORSKTL, which 3.1c does not ship. The rule reaches 3.1c units those files left out: ARMSAM, ARMSCORP, ARMSEER, CORKROG, CORMIST, CORSCORP, CORSEAL, CORSHARK and CORVRAD. There is no field comparison with the import: the Uberhack files carry that balance in every other field. `level-2-discount`'s report is the check.

Seaplane Platform Speed and Advanced Sub Reach and Arm Decoy Commander name units, as the originals do: ARMPLAT and CORPLAT, ARMACSUB and CORACSUB, and ARMDECOM. Armdecom sets worker time to 999. On 3.1c the Arm decoy's worker time is 30.

## Build, pack and check

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" economy
```

That prints `build: economy: 26 imports, 13 packages, 0 files from originals`. Pack and check from `build/economy`:

```sh
S=$(mktemp -d -t L02)
for m in */oamut.yaml; do
  id=${m%/oamut.yaml}
  case $id in _*) continue;; esac
  "$T" mutator pack "$id" --out "$S/$id.oamut" && "$T" mutator check "$S/$id.oamut" --json > "$S/$id.json"
done
```

Paths in `_verify/comparisons.tsv` are relative to `build/economy`. A second `tools/build-packages --tool "$T" economy --out <empty folder>` matches `build/economy`.
