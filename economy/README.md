# Economy

This group holds the mutators that change income, cost, storage, build speed and how far a builder reaches, including Finite Metal and the single-unit economy tweaks. Nineteen packages. Each original's author stays in the tables here and in the package's manifest.

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
| No Resource System | Drinken | `Mutators/{}NoResourceSystem.tam` | `no-resource-system` | `no-resource-system` | `no-resource-system` |
| SeaplanePlatform_WTx1,5 | Drinken | `Mutators/{}SPP_WTx1,5.tam` | `seaplaneplatform-wtx1-5` | `seaplane-platform-speed`, factor 1.5 | `seaplane-platform-speed-1.5`, `seaplane-platform-speed-3` |
| SeaplanePlatform_WTx2 | Drinken | `Mutators/{}SPP_WTx2.tam` | `seaplaneplatform-wtx2` | `seaplane-platform-speed`, factor 2 | `seaplane-platform-speed-2`, `seaplane-platform-speed-3` |
| SeaplanePlatform_WTx4 | Drinken | `Mutators/{}SPP_WTx4.tam` | `seaplaneplatform-wtx4` | `seaplane-platform-speed`, factor 4 | `seaplane-platform-speed-4` |
| AdvConstructionSub_BDx1,5 | Drinken | `Mutators/{}acsub_bdx1,5.tam` | `advconstructionsub-bdx1-5` | `advanced-sub-reach` | `advanced-sub-reach` |
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

Enhanced Wind Generators no longer tests the English name "Wind Generator". A structure with `bmcode` 0 and `windgenerator` from 1 to 1e7 matches, so a translated or modded generator counts. On Total Annihilation 3.1c with both expansions the same two units match: ARMWIN and CORWIN.

No Porc and No Resource System remove units with `remove()` instead of a blank copyright line. No Porc still clears `metalmake` from 0.01 to 10. No Resource System keeps the original's name and description tests, which aim at third-party units if they are installed: a name containing "Fusion Reactor", a name containing "AI ", and the description "Highly unstable Rock to Metal subatomic converter". A written cloak cost is `has("")`, the original's `CloakCost=""*`. `absent()` is already a negated need, so `not_(absent())` does not run.

No Waste stores 1900000 metal and 1900000 energy. The original text says a million. The package keeps the numbers the rule file wrote.

Level 2 Discount replaces the forty-three Uberhack 2.0 unit files with one rule: `category` contains LEVEL2, `bmcode` is 1, and the unit is not a builder, an aircraft, a floater, a hovercraft or TED class WATER. Costs and build time are multiplied by 0.7. The hand-picked forty-three also held the decoy commanders (ARMDECOM, CORDECOM), the seaplane CORSEAP, and Uberhack's construction Freaker (a builder filed as CORFAST). On 3.1c with both expansions the rule selects these 42 level-2 units:

ARMASER, ARMBULL, ARMCROC, ARMFAST, ARMFIDO, ARMJAM, ARMLATNK, ARMMANNI, ARMMARK, ARMMART, ARMMAV, ARMMERL, ARMSAM, ARMSCORP, ARMSEER, ARMSNIPE, ARMSPID, ARMSPY, ARMVADER, ARMYORK, ARMZEUS, CORAMPH, CORCAN, CORETER, CORFAST, CORGOL, CORHRK, CORKROG, CORMART, CORMIST, CORPYRO, CORROACH, CORSCORP, CORSEAL, CORSENT, CORSHARK, CORSPEC, CORSPY, CORSUMO, CORVOYR, CORVRAD, CORVROC.

3.1c's CORFAST is the combat Freaker, not a builder, so the rule includes it. CORSHARK is a submarine (TED class SHIP). The rule excludes TED class WATER and still includes it. The files also name ARMAMPH, which hovers, CORMORT and CORREAP, which are level 1 on 3.1c, and ARMREF, ARMSPTK, ARMST and CORSKTL, which 3.1c does not ship. The rule reaches 3.1c units those files left out: ARMSAM, ARMSCORP, ARMSEER, CORKROG, CORMIST, CORSCORP, CORSEAL, CORSHARK and CORVRAD. There is no field comparison with the import: the Uberhack files carry that balance in every other field. `level-2-discount`'s report is the check.

Seaplane Platform Speed and Advanced Sub Reach and Arm Decoy Commander name units, as the originals do: ARMPLAT and CORPLAT, ARMACSUB and CORACSUB, and ARMDECOM. Armdecom sets worker time to 999. On 3.1c the Arm decoy's worker time is 30.

## Originals

| Title | Source under `originals/` | Import | Package and option | Comparison rows |
|---|---|---|---|---|
| [MAC] Enhanced Builders (Arm) | `igi-server/MAC's mutators/{}MAC Enhanced Builders (Arm).tam` | `mac-enhanced-builders-arm` | `enhanced-builders`, side arm | `enhanced-builders-arm` |
| [MAC] Enhanced Builders (Core) | `igi-server/MAC's mutators/{}MAC Enhanced Builders (Core).tam` | `mac-enhanced-builders-core` | `enhanced-builders`, side core | `enhanced-builders-core` |
| [MAC] Enhanced Builders | `igi-server/MAC's mutators/{}MAC Enhanced Builders.tam` | `mac-enhanced-builders` | `enhanced-builders` | `enhanced-builders` |
| [MAC] Enhanced Factories (Arm) | `igi-server/MAC's mutators/{}MAC Enhanced Factories (Arm).tam` | `mac-enhanced-factories-arm` | `enhanced-factories`, side arm | `enhanced-factories-arm` |
| [MAC] Enhanced Factories (Core) | `igi-server/MAC's mutators/{}MAC Enhanced Factories (Core).tam` | `mac-enhanced-factories-core` | `enhanced-factories`, side core | `enhanced-factories-core` |
| [MAC] Enhanced Factories | `igi-server/MAC's mutators/{}MAC Enhanced Factories.tam` | `mac-enhanced-factories` | `enhanced-factories` | `enhanced-factories` |
| [MAC] Extended Builders (Arm) | `igi-server/MAC's mutators/{}MAC Extended Builders (Arm).tam` | `mac-extended-builders-arm` | `extended-builders`, side arm | `extended-builders-arm` |
| [MAC] Extended Builders (Core) | `igi-server/MAC's mutators/{}MAC Extended Builders (Core).tam` | `mac-extended-builders-core` | `extended-builders`, side core | `extended-builders-core` |
| [MAC] Extended Builders | `igi-server/MAC's mutators/{}MAC Extended Builders.tam` | `mac-extended-builders` | `extended-builders` | `extended-builders` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it, except LOS_1600, which is a `}{` mutator with `}{MAC LOS_1600.ccx`.

## Differences from the originals

`extended-builders.allowed` records two fixes. The original's selector lacks `Builder`, so it doubled the sight of every ground unit; the curated version doubles builders' only. That difference is `right only field units/*.fbi [unitinfo] sightdistance: *`. The original's leash field is misspelt, so it changed no leash; the curated version doubles `maneuverleashlength`. That difference is `left only field units/*.fbi [unitinfo] maneuverleashlength: *`. The build-distance change for those builders is the original's. On 3.1c the originals double the sight of 122 ground units.

Enhanced Builders leaves commanders out with `commander` 1 instead of the names ARMCOM and CORCOM. On 3.1c that is the same set. The decoy commanders have no commander flag, so both versions include them. The comparison rows allow no differences.

Super Commander keeps each side's numbers. Arm multiplies top speed by 7 and braking and acceleration by 49. Core multiplies top speed by 5 and braking and acceleration by 25. Both texts promise 500% more speed. Side all applies each copy to its own side. A commander of another side is left alone, as the two originals leave it.

Resources Easy Self-Destruct keeps the Arm transport change on the Transportable option, which defaults to no. The Arm comparison sets Transportable to yes. The Core comparison leaves it at no, and the Core rules do not set the transport fields.

Maneuverable Hovers keeps the rule's numbers. The text says top speeds stay unchanged. The rule sets bank scale to 0.7, multiplies top speed, braking and acceleration by 2.5, multiplies turn rate by 6, and sets the override adjust to 1. The comparison row allows no differences.

`{}MAC Bio-Armor.tam` and `{}MAC Incognito.tam` are titled "[MAC] Bio-Armor (Arm)" and "[MAC] Incognito (Arm)", the same titles as the Arm files. Their rows pass `--id`, and the import id is that id: `mac-bio-armor` and `mac-incognito`. Every other row writes `-` in the id column.

Useful Mines writes an empty yard map from the units hook. A rule that sets an empty value would remove the field, and the original sets `Yardmap` empty so the mines are hard to kill without area weapons. The original names `Category` twice, once for ` MINE` and once for `KAMIKAZE`. The Lua rules keep both tests as two needs on that field, and the hook uses the same two needs. The selection is the original's.

## Originals

| Original | Source | Import | Package | Option | Checked over |
|---|---|---|---|---|---|
| [MAC] Arm Advanced Solar Collector tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMADVSOL tweak.tam` | `mac-arm-advanced-solar-collector-tweak-for-utasp` | `advanced-solar-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Adv. G-N Const. Seaplane tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMANS tweak.tam` | `mac-arm-adv-g-n-const-seaplane-tweak-for-utasp` | `adv-seaplane-builder-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Heavy Vehicle Plant tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMHVP tweak.tam` | `mac-arm-heavy-vehicle-plant-tweak-for-utasp` | `heavy-vehicle-plant-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Resource Facility tweak for UTASP, TAUCP | `igi-server/MAC's mutators/{}MAC TAWF004 tweak.tam` | `mac-arm-resource-facility-tweak-for-utasp-taucp` | `resource-facility-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Nano-Tower tweak for TAUCP | `igi-server/MAC's mutators/{}MAC ARMNTOW TAUCP tweak.tam` | `mac-arm-nano-tower-tweak-for-taucp` | `nano-tower-tweak` | for taucp | `utasp-v5.0` |
| [MAC] Arm Nano-Tower tweak for UTASP 4/5 | `igi-server/MAC's mutators/{}MAC ARMNTOW UTASP45 tweak.tam` | `mac-arm-nano-tower-tweak-for-utasp-4-5` | `nano-tower-tweak` | for utasp | `utasp-v5.0` |
| [MAC] Arm Quad Air Pad tweak | `igi-server/MAC's mutators/{}MAC Arm QuadAirPad tweak.tam` | `mac-arm-quad-air-pad-tweak` | `quad-air-pad-tweak` | — | `utasp-v5.0` |
| [MAC] Absolute Annihilation 6.0 Tweaks | `igi-server/MAC's mutators/}{MAC AA 6.0 Tweaks.tam` | `mac-absolute-annihilation-6-0-tweaks` | not converted | — | not checked |

`radar-plane-targeting` with plane both is the two plane imports together. `nano-tower-tweak` with for utasp is the default.

Why each row runs where it does:

Clairvoyance keeps the originals' checks: the unit name is ArmBeac or ArmEye (Core: CorBeac or CorEye), the description mentions Radar, the sound is ARM_ADVRADAR or CORE_ADVRADAR, and the radar range is already between 4000 and 32000. On the packaged units those checks hold (the files write the names in capitals; the check ignores ASCII case).

## Not converted

Absolute Annihilation 6.0 Tweaks is not a package. It needs Absolute Annihilation 6.0, which is not packaged, so it is not checked. The import `mac-absolute-annihilation-6-0-tweaks` is kept. The archive is Absolute Annihilation 6.0's whole `weapons/weapons.tdf`, with `burnblow=0`, `unitsonly=1` and `noautorange=1` added to its Mercury (`ADVSAM`). Over 3.1c that file would replace 3.1c's own `weapons.tdf`.

## Files left out of the hard imports

P05's warnings, from `tools/build-packages`. F02 refuses a path outside the per-match allow-list. F04 allows `anims/<unit>_gadget.gaf` for a unit the archive adds, so those buttons are kept.

- `}{MAC ARMNTOW tweak.ccx`: left out `gui/ARMMTLAB1.GUI` (unknown-folder). The folder is misspelt. TA never read it either. The two button pictures, `anims/ARMMTLAB_gadget.GAF` and `anims/ARMNTOW_gadget.GAF`, are kept, and the curated package ships them.
- `}{MAC ARM_eyes tweak.ccx`: nothing left out. `anims/ARMEYES_gadget.GAF` is kept, and the curated package ships it.
- `}{MAC AA 6.0 Tweaks.ccx`: left out `tweaks.txt` (unknown-folder). It sits at the top of the archive and says which three keys were added to ADVSAM. `weapons/weapons.tdf` is kept in the import only.

Every other import warning is a compatibility code with no mod (`UTASP`, `UT30b`, `UT40b`, `UT50b`, `TAUCP17`, `TAUCP18`, `TAUCP23`, `AA60`), the note that tags default to gameplay, or, for the Seahawk, that an empty line before the compatibility line was skipped. OTA and TACC on the two plane tweaks map to the base game. None of those codes is passed as `--works-with`.

## Files

Each hash is the SHA-256 of the archive entry. The file under `files/` is those bytes. Paths keep the archive's names.

`nano-tower` and `nano-tower-tweak` conflict. One adds the pad and the tower, and the other changes those units when a pack already has them.

## Differences from the originals

There is no allowed file. Every row of `_verify/comparisons.tsv` keeps `allowed` as `-`. Each comparison of the curated package with its faithful import matched, over 3.1c or over the row's mod, so no package was changed.

The reports are what `oa-tool mutator diff` prints. A tweak changes only the fields its original names, on the units it names. A field the unit already holds does not appear: the Seahawk's `MaxWaterDepth` is already 255, and on UTASP 5.0 the advanced seaplane builder's `MaxWaterDepth` is already 255. Nano Tower adds ARMMTLAB and ARMNTOW, their files and their menu entries. Dragon's Eye adds ARMEYES. Clairvoyance over UTASP 5.0 changes ARMBEAC and CORBEAC. Over TAUCP 2.3 it changes ARMEYE.

The files layer writes `download/armmtlab-2.tdf` for the pad's ARMFAB entry, a builder 3.1c does not have. The import's own report has the same file, so the comparison does not count it.

## Originals

| Original | Author | Source | Import | Package | Option | Row |
|---|---|---|---|---|---|---|
| Finite Metal TA | Drinken; features by BSR | `igi-server/finitemetalta_mutator/{}FiniteMetal.tam` | `finite-metal-ta` | `finite-metal` | counter_strike no | `finite-metal` over 3.1c, `finite-metal-uh` over `uberhack-v4.0` |
| Finite Metal TA (Counter Strike) | Drinken | `igi-server/finitemetalta_cs_mutator/{}FiniteMetal_CS.tam` | `finite-metal-ta-counter-strike` | `finite-metal` | counter_strike yes | `finite-metal-cs` over 3.1c |
| D-TAM (Build#:017) | Davicius / Total Dave | `igi-server/DTAM/{}DAVETA.tam` | `d-tam-build-017` | not converted | — | not checked |

`finite-metal` with counter_strike no is the default. The two Finite Metal companion archives, `{}FiniteMetal(1).ccx` and `{}FiniteMetal_CS(1).ccx`, are the same bytes (SHA-256 `4efdc3e1158b11e05f6a680dc1b5d6ef45406a04ff9da0238273c63fa3580a54`). The curated package takes its 16 feature files from the Finite Metal TA archive.

## Not converted

D-TAM (Build#:017) is not a package. It is a mod assembled from other mutators, as DRUH 00.11 was, and a mod package is the route if it is wanted later. The import `d-tam-build-017` is kept.

Its rules are a Tactical Strike variant (factories build faster, mobile units cost more and take longer, builders are a little slower to build and a little tougher and quicker, aircraft are left out of the extra speed, every unit is tougher and costlier, and commanders make five times the energy and metal), Finite Metal's rules, No Porc's (metal makers removed, and a second `MetalMake` removal), Jumbo Storage 2x (storage of 300 or more is doubled) and an Air Scout sight change (sight 500, radar 700, cruise altitude 300). A stray `}` follows the last block, and `MinWaterDepth=15,0` is an empty range that selects nothing.

Its archive holds Directional Factories' 510 files byte for byte, and Battle Ship Deck Lasers' 8 files (`}{BSDECKL.ccx`: the two battleship units, models, scripts and `.bos` sources) byte for byte. It also holds Finite Metal's 16 feature files with more metal in the rocks (lava's medium rock is 300 there and 700 here), a cannon spider (`ARMSPID` with its model), two AI-only solar collectors (`AIARMSOLAR` and `AICORSOLAR`, with scripts, pictures and download files) and ten whole AI profiles (`Acid`, `AirBattle`, `DEFAULT`, `Hover`, `Krogoth`, `MISSIONS`, `Metal`, `SeaBattle`, `Urban`, `Waterwrld`). `Readme.txt` sits beside the `.tam`. No `.tam` claims it, so the import does not take it.

P05 leaves these files out of the D-TAM import. F02 refuses a path outside the per-match allow-list. F04 allows `anims/<unit>_gadget.gaf` for a unit the archive adds, so `anims/ARMBATS_gadget.GAF`, `anims/CORBATS_gadget.GAF` and `anims/ARMSPID_gadget.GAF` are kept: the archive holds those units (the two battleships from Battle Ship Deck Lasers, and the cannon spider). Directional Factories' import leaves the same three out, because that archive does not hold the units.

| File | F02 rule |
|---|---|
| `guis/ARMDL.GUI` | menus-only |
| `guis/Armacsub1.gui` | menus-only |
| `guis/Armacv1.gui` | menus-only |
| `guis/CORDL.GUI` | menus-only |
| `guis/Armack1.gui` | menus-only |
| `guis/ARMCA2.GUI` | menus-only |
| `guis/ARMCA4.GUI` | menus-only |
| `guis/armch2.gui` | menus-only |
| `guis/Armch3.gui` | menus-only |
| `guis/ARMCH5.GUI` | menus-only |
| `guis/Armck2.gui` | menus-only |
| `guis/Armck3.gui` | menus-only |
| `guis/Armck4.gui` | menus-only |
| `guis/Armcom2.gui` | menus-only |
| `guis/Armcs1.gui` | menus-only |
| `guis/armcsa2.gui` | menus-only |
| `guis/armcsa3.gui` | menus-only |
| `guis/armcsa5.gui` | menus-only |
| `guis/Armcv2.gui` | menus-only |
| `guis/Armcv3.gui` | menus-only |
| `guis/Armcv4.gui` | menus-only |
| `guis/Corack1.gui` | menus-only |
| `guis/Coracsub1.gui` | menus-only |
| `guis/Coracv1.gui` | menus-only |
| `guis/Corca2.gui` | menus-only |
| `guis/Corca4.gui` | menus-only |
| `guis/Corch2.gui` | menus-only |
| `guis/Corch3.gui` | menus-only |
| `guis/CORCH5.GUI` | menus-only |
| `guis/Corck2.gui` | menus-only |
| `guis/Corck3.gui` | menus-only |
| `guis/Corck4.gui` | menus-only |
| `guis/Corcom2.gui` | menus-only |
| `guis/Corcs1.gui` | menus-only |
| `guis/Corcsa2.gui` | menus-only |
| `guis/Corcsa3.gui` | menus-only |
| `guis/corcsa5.gui` | menus-only |
| `guis/Corcv2.gui` | menus-only |
| `guis/Corcv3.gui` | menus-only |
| `guis/Corcv4.gui` | menus-only |
| `anims/Armack1.gaf` | interface-art |
| `anims/CORVROC_gadget.GAF` | interface-art |
| `anims/Armacsub1.gaf` | interface-art |
| `anims/Armacv1.gaf` | interface-art |
| `anims/ARMACSUB_gadget.GAF` | interface-art |
| `anims/ARMACV_gadget.GAF` | interface-art |
| `anims/ARMAH_gadget.GAF` | interface-art |
| `anims/ARMANAC_gadget.GAF` | interface-art |
| `anims/ARMASER_gadget.GAF` | interface-art |
| `anims/Armca2.gaf` | interface-art |
| `anims/Armca4.gaf` | interface-art |
| `anims/Armch2.gaf` | interface-art |
| `anims/Armch3.gaf` | interface-art |
| `anims/ARMBULL_gadget.GAF` | interface-art |
| `anims/Armck2.gaf` | interface-art |
| `anims/Armck3.gaf` | interface-art |
| `anims/Armck4.gaf` | interface-art |
| `anims/ARMCARRY_gadget.GAF` | interface-art |
| `anims/Armcom2.gaf` | interface-art |
| `anims/ARMCH_gadget.GAF` | interface-art |
| `anims/ARMCK_gadget.GAF` | interface-art |
| `anims/Corcs1.gaf` | interface-art |
| `anims/Armcsa2.gaf` | interface-art |
| `anims/Armcsa3.gaf` | interface-art |
| `anims/ARMCROC_gadget.GAF` | interface-art |
| `anims/Armcv2.gaf` | interface-art |
| `anims/Armcv3.gaf` | interface-art |
| `anims/Armcv4.gaf` | interface-art |
| `anims/ARMCRUS_gadget.GAF` | interface-art |
| `anims/ARMCS_gadget.GAF` | interface-art |
| `anims/ARMCV_gadget.GAF` | interface-art |
| `anims/Armcs1.gaf` | interface-art |
| `anims/ARMHP_GADGET.GAF` | interface-art |
| `anims/Corack1.gaf` | interface-art |
| `anims/CORHP_GADGET.GAF` | interface-art |
| `anims/Coracsub1.gaf` | interface-art |
| `anims/Coracv1.gaf` | interface-art |
| `anims/Corca2.gaf` | interface-art |
| `anims/Corca4.gaf` | interface-art |
| `anims/Corch2.gaf` | interface-art |
| `anims/corch3.gaf` | interface-art |
| `anims/Corck2.gaf` | interface-art |
| `anims/Corck3.gaf` | interface-art |
| `anims/Corck4.gaf` | interface-art |
| `anims/Corcom2.gaf` | interface-art |
| `anims/Corcsa2.gaf` | interface-art |
| `anims/corcsa3.gaf` | interface-art |
| `anims/Corcv2.gaf` | interface-art |
| `anims/Corcv3.gaf` | interface-art |
| `anims/Corcv4.gaf` | interface-art |
| `anims/ARMFAST_gadget.GAF` | interface-art |
| `anims/ARMFAV_gadget.GAF` | interface-art |
| `anims/ARMFIDO_gadget.GAF` | interface-art |
| `anims/ARMFLASH_gadget.GAF` | interface-art |
| `anims/ARMHAM_gadget.GAF` | interface-art |
| `anims/ARMJAM_gadget.GAF` | interface-art |
| `anims/ARMJETH_gadget.GAF` | interface-art |
| `anims/ARMMART_gadget.GAF` | interface-art |
| `anims/ARMMERL_gadget.GAF` | interface-art |
| `anims/ARMMH_gadget.GAF` | interface-art |
| `anims/ARMMSHIP_gadget.GAF` | interface-art |
| `anims/ARMPT_gadget.GAF` | interface-art |
| `anims/ARMPW_gadget.GAF` | interface-art |
| `anims/ARMROCK_gadget.GAF` | interface-art |
| `anims/ARMROY_gadget.GAF` | interface-art |
| `anims/ARMSAM_gadget.GAF` | interface-art |
| `anims/ARMSEER_gadget.GAF` | interface-art |
| `anims/ARMSH_gadget.GAF` | interface-art |
| `anims/ARMSTUMP_gadget.GAF` | interface-art |
| `anims/ARMSUB_gadget.GAF` | interface-art |
| `anims/ARMSUBK_gadget.GAF` | interface-art |
| `anims/ARMTHOVR_gadget.GAF` | interface-art |
| `anims/ARMTSHIP_gadget.GAF` | interface-art |
| `anims/ARMVADER_gadget.GAF` | interface-art |
| `anims/ARMZEUS_gadget.GAF` | interface-art |
| `anims/CORACK_gadget.GAF` | interface-art |
| `anims/CORACSUB_gadget.GAF` | interface-art |
| `anims/CORACV_gadget.GAF` | interface-art |
| `anims/CORAH_gadget.GAF` | interface-art |
| `anims/CORAK_gadget.GAF` | interface-art |
| `anims/CORCAN_gadget.GAF` | interface-art |
| `anims/CORCARRY_gadget.GAF` | interface-art |
| `anims/CORCH_gadget.GAF` | interface-art |
| `anims/CORCK_gadget.GAF` | interface-art |
| `anims/CORCRASH_gadget.GAF` | interface-art |
| `anims/CORCRUS_gadget.GAF` | interface-art |
| `anims/CORCS_gadget.GAF` | interface-art |
| `anims/CORCV_gadget.GAF` | interface-art |
| `anims/CORETER_gadget.GAF` | interface-art |
| `anims/CORFAV_gadget.GAF` | interface-art |
| `anims/CORGATOR_gadget.GAF` | interface-art |
| `anims/CORGOL_gadget.GAF` | interface-art |
| `anims/CORMART_gadget.GAF` | interface-art |
| `anims/CORMH_gadget.GAF` | interface-art |
| `anims/CORMIST_gadget.GAF` | interface-art |
| `anims/CORMSHIP_gadget.GAF` | interface-art |
| `anims/CORPT_gadget.GAF` | interface-art |
| `anims/CORPYRO_gadget.GAF` | interface-art |
| `anims/CORRAID_gadget.GAF` | interface-art |
| `anims/CORREAP_gadget.GAF` | interface-art |
| `anims/CORROACH_gadget.GAF` | interface-art |
| `anims/CORROY_gadget.GAF` | interface-art |
| `anims/CORSEAL_gadget.GAF` | interface-art |
| `anims/CORSH_gadget.GAF` | interface-art |
| `anims/CORSHARK_gadget.GAF` | interface-art |
| `anims/CORSNAP_gadget.GAF` | interface-art |
| `anims/CORSPEC_gadget.GAF` | interface-art |
| `anims/CORSTORM_gadget.GAF` | interface-art |
| `anims/CORSUB_gadget.GAF` | interface-art |
| `anims/CORTHOVR_gadget.GAF` | interface-art |
| `anims/CORTHUD_gadget.GAF` | interface-art |
| `anims/CORTSHIP_gadget.GAF` | interface-art |
| `anims/CORVRAD_gadget.GAF` | interface-art |
| `anims/ARMACK_gadget.GAF` | interface-art |
| `Bitmaps/FrontendX.pcx` | read-once |

## Files left out of the Directional Factories import

P05's warnings for `}{DirFact.ccx`. 40 build pages are menus only, and 117 GAFs are interface art. 83 of the GAFs are `_gadget` buttons for base units, for the base factories' extra pages, and 34 are constructors' build-page art. None names a unit the archive holds, and the 36 new factories have no `_gadget` art of their own. The faithful import therefore adds factories that nothing offers.

| File | F02 rule |
|---|---|
| `anims/Armack1.gaf` | interface-art |
| `anims/CORVROC_gadget.GAF` | interface-art |
| `anims/Armacsub1.gaf` | interface-art |
| `anims/Armacv1.gaf` | interface-art |
| `anims/ARMACSUB_gadget.GAF` | interface-art |
| `anims/ARMACV_gadget.GAF` | interface-art |
| `anims/ARMAH_gadget.GAF` | interface-art |
| `anims/ARMANAC_gadget.GAF` | interface-art |
| `anims/ARMASER_gadget.GAF` | interface-art |
| `anims/Armca2.gaf` | interface-art |
| `anims/Armca4.gaf` | interface-art |
| `anims/Armch2.gaf` | interface-art |
| `anims/Armch3.gaf` | interface-art |
| `anims/ARMBATS_gadget.GAF` | interface-art |
| `anims/ARMBULL_gadget.GAF` | interface-art |
| `anims/Armck2.gaf` | interface-art |
| `anims/Armck3.gaf` | interface-art |
| `anims/Armck4.gaf` | interface-art |
| `anims/ARMCARRY_gadget.GAF` | interface-art |
| `anims/Armcom2.gaf` | interface-art |
| `anims/ARMCH_gadget.GAF` | interface-art |
| `anims/ARMCK_gadget.GAF` | interface-art |
| `anims/Corcs1.gaf` | interface-art |
| `anims/Armcsa2.gaf` | interface-art |
| `anims/Armcsa3.gaf` | interface-art |
| `anims/ARMCROC_gadget.GAF` | interface-art |
| `anims/Armcv2.gaf` | interface-art |
| `anims/Armcv3.gaf` | interface-art |
| `anims/Armcv4.gaf` | interface-art |
| `anims/ARMCRUS_gadget.GAF` | interface-art |
| `anims/ARMCS_gadget.GAF` | interface-art |
| `anims/ARMCV_gadget.GAF` | interface-art |
| `anims/Armcs1.gaf` | interface-art |
| `anims/ARMHP_GADGET.GAF` | interface-art |
| `anims/Corack1.gaf` | interface-art |
| `anims/CORHP_GADGET.GAF` | interface-art |
| `anims/Coracsub1.gaf` | interface-art |
| `anims/Coracv1.gaf` | interface-art |
| `anims/Corca2.gaf` | interface-art |
| `anims/Corca4.gaf` | interface-art |
| `anims/Corch2.gaf` | interface-art |
| `anims/corch3.gaf` | interface-art |
| `anims/Corck2.gaf` | interface-art |
| `anims/Corck3.gaf` | interface-art |
| `anims/Corck4.gaf` | interface-art |
| `anims/Corcom2.gaf` | interface-art |
| `anims/Corcsa2.gaf` | interface-art |
| `anims/corcsa3.gaf` | interface-art |
| `anims/Corcv2.gaf` | interface-art |
| `anims/Corcv3.gaf` | interface-art |
| `anims/Corcv4.gaf` | interface-art |
| `anims/ARMFAST_gadget.GAF` | interface-art |
| `anims/ARMFAV_gadget.GAF` | interface-art |
| `anims/ARMFIDO_gadget.GAF` | interface-art |
| `anims/ARMFLASH_gadget.GAF` | interface-art |
| `anims/ARMHAM_gadget.GAF` | interface-art |
| `anims/ARMJAM_gadget.GAF` | interface-art |
| `anims/ARMJETH_gadget.GAF` | interface-art |
| `anims/ARMMART_gadget.GAF` | interface-art |
| `anims/ARMMERL_gadget.GAF` | interface-art |
| `anims/ARMMH_gadget.GAF` | interface-art |
| `anims/ARMMSHIP_gadget.GAF` | interface-art |
| `anims/ARMPT_gadget.GAF` | interface-art |
| `anims/ARMPW_gadget.GAF` | interface-art |
| `anims/ARMROCK_gadget.GAF` | interface-art |
| `anims/ARMROY_gadget.GAF` | interface-art |
| `anims/ARMSAM_gadget.GAF` | interface-art |
| `anims/ARMSEER_gadget.GAF` | interface-art |
| `anims/ARMSH_gadget.GAF` | interface-art |
| `anims/ARMSPID_gadget.GAF` | interface-art |
| `anims/ARMSTUMP_gadget.GAF` | interface-art |
| `anims/ARMSUB_gadget.GAF` | interface-art |
| `anims/ARMSUBK_gadget.GAF` | interface-art |
| `anims/ARMTHOVR_gadget.GAF` | interface-art |
| `anims/ARMTSHIP_gadget.GAF` | interface-art |
| `anims/ARMVADER_gadget.GAF` | interface-art |
| `anims/ARMZEUS_gadget.GAF` | interface-art |
| `anims/CORACK_gadget.GAF` | interface-art |
| `anims/CORACSUB_gadget.GAF` | interface-art |
| `anims/CORACV_gadget.GAF` | interface-art |
| `anims/CORAH_gadget.GAF` | interface-art |
| `anims/CORAK_gadget.GAF` | interface-art |
| `anims/CORBATS_gadget.GAF` | interface-art |
| `anims/CORCAN_gadget.GAF` | interface-art |
| `anims/CORCARRY_gadget.GAF` | interface-art |
| `anims/CORCH_gadget.GAF` | interface-art |
| `anims/CORCK_gadget.GAF` | interface-art |
| `anims/CORCRASH_gadget.GAF` | interface-art |
| `anims/CORCRUS_gadget.GAF` | interface-art |
| `anims/CORCS_gadget.GAF` | interface-art |
| `anims/CORCV_gadget.GAF` | interface-art |
| `anims/CORETER_gadget.GAF` | interface-art |
| `anims/CORFAV_gadget.GAF` | interface-art |
| `anims/CORGATOR_gadget.GAF` | interface-art |
| `anims/CORGOL_gadget.GAF` | interface-art |
| `anims/CORMART_gadget.GAF` | interface-art |
| `anims/CORMH_gadget.GAF` | interface-art |
| `anims/CORMIST_gadget.GAF` | interface-art |
| `anims/CORMSHIP_gadget.GAF` | interface-art |
| `anims/CORPT_gadget.GAF` | interface-art |
| `anims/CORPYRO_gadget.GAF` | interface-art |
| `anims/CORRAID_gadget.GAF` | interface-art |
| `anims/CORREAP_gadget.GAF` | interface-art |
| `anims/CORROACH_gadget.GAF` | interface-art |
| `anims/CORROY_gadget.GAF` | interface-art |
| `anims/CORSEAL_gadget.GAF` | interface-art |
| `anims/CORSH_gadget.GAF` | interface-art |
| `anims/CORSHARK_gadget.GAF` | interface-art |
| `anims/CORSNAP_gadget.GAF` | interface-art |
| `anims/CORSPEC_gadget.GAF` | interface-art |
| `anims/CORSTORM_gadget.GAF` | interface-art |
| `anims/CORSUB_gadget.GAF` | interface-art |
| `anims/CORTHOVR_gadget.GAF` | interface-art |
| `anims/CORTHUD_gadget.GAF` | interface-art |
| `anims/CORTSHIP_gadget.GAF` | interface-art |
| `anims/CORVRAD_gadget.GAF` | interface-art |
| `anims/ARMACK_gadget.GAF` | interface-art |
| `guis/ARMDL.GUI` | menus-only |
| `guis/Armacsub1.gui` | menus-only |
| `guis/Armacv1.gui` | menus-only |
| `guis/CORDL.GUI` | menus-only |
| `guis/Armack1.gui` | menus-only |
| `guis/ARMCA2.GUI` | menus-only |
| `guis/ARMCA4.GUI` | menus-only |
| `guis/armch2.gui` | menus-only |
| `guis/Armch3.gui` | menus-only |
| `guis/ARMCH5.GUI` | menus-only |
| `guis/Armck2.gui` | menus-only |
| `guis/Armck3.gui` | menus-only |
| `guis/Armck4.gui` | menus-only |
| `guis/Armcom2.gui` | menus-only |
| `guis/Armcs1.gui` | menus-only |
| `guis/armcsa2.gui` | menus-only |
| `guis/armcsa3.gui` | menus-only |
| `guis/armcsa5.gui` | menus-only |
| `guis/Armcv2.gui` | menus-only |
| `guis/Armcv3.gui` | menus-only |
| `guis/Armcv4.gui` | menus-only |
| `guis/Corack1.gui` | menus-only |
| `guis/Coracsub1.gui` | menus-only |
| `guis/Coracv1.gui` | menus-only |
| `guis/Corca2.gui` | menus-only |
| `guis/Corca4.gui` | menus-only |
| `guis/Corch2.gui` | menus-only |
| `guis/Corch3.gui` | menus-only |
| `guis/CORCH5.GUI` | menus-only |
| `guis/Corck2.gui` | menus-only |
| `guis/Corck3.gui` | menus-only |
| `guis/Corck4.gui` | menus-only |
| `guis/Corcom2.gui` | menus-only |
| `guis/Corcs1.gui` | menus-only |
| `guis/Corcsa2.gui` | menus-only |
| `guis/Corcsa3.gui` | menus-only |
| `guis/corcsa5.gui` | menus-only |
| `guis/Corcv2.gui` | menus-only |
| `guis/Corcv3.gui` | menus-only |
| `guis/Corcv4.gui` | menus-only |

Finite Metal TA's import leaves no file out. Its other warnings are that tags default to gameplay, that TACC maps to ta-3.1c, and that BF, UH and UH30 are not mapped to a mod. The Counter Strike import says the same for TACC and BF. Directional Factories adds that DTH is not mapped to a mod, and D-TAM says that tags default to gameplay and that TACC maps to ta-3.1c. None of those codes is passed as `--works-with`.

## Files

Each hash is the SHA-256 of the archive entry. The file under `files/` is those bytes. Paths keep the archive's names.

`finite-metal` ships the 16 feature files. Every section is a metal patch the file turns into a rock or a wreck. `directional-factories` ships the 36 unit files, 72 models (the plants and their wrecks), 36 scripts, 36 pictures, 4 wreck and heap files in `features/corpses/`, and the 121 download files whose `UNITMENU` is one of the 36 new factories.

### finite-metal

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/features/acid/AcidMetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/acid/AcidMetal.tdf` | `a825241fabbb0e5f9d11fe4ca8eab5d2415198a323f48650fd1a59572ff84e76` |
| `files/features/archi/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/archi/METAL.TDF` | `f1f0143ab0e3497e00094739d50500737ef7e40254ff05f30cc51a031c3651ea` |
| `files/features/archi/watermetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/archi/watermetal.tdf` | `ad794cf3deae0e99fbd40b8afab255ded38dfd59287f5be8b78c296a80490cf1` |
| `files/features/crystal/Crystal-Metal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/crystal/Crystal-Metal.tdf` | `c260cdb33c317fe825f51660abd5fc34ba7816728734980a6bb8aacee633019c` |
| `files/features/desert/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/desert/METAL.TDF` | `ef66a4ba50f6d1f204b0012c1f24957378babb049030f1b474c9b5f44bab0c64` |
| `files/features/green/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/green/METAL.TDF` | `51767f75d6283310c49963840f411010a5c4d10761a975dc56ee4fc99e3d2a78` |
| `files/features/green/Watermetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/green/Watermetal.tdf` | `319dfb9b98fb5d315b69c170d89dfcb6175cde90fb0c051db664c7307b50f921` |
| `files/features/ice/IceWaterMetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/ice/IceWaterMetal.tdf` | `47935a030aef7ccde719a7eb720d8bd2370d7230295da0257efb8430b912ce48` |
| `files/features/ice/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/ice/METAL.TDF` | `5b193691a940ada69cd7f168d5dc096e61a52fa96896e5e45b6a1f186930f837` |
| `files/features/lava/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/lava/METAL.TDF` | `6b070dad94b3bc638d2b9ca79c268409b0357b43c80ed716ddf69d745e4aeff4` |
| `files/features/mars/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/mars/METAL.TDF` | `8634b8ae1dc1fb143f3d7f99c7998b7109753e5f5d8095776e20bf34e0045af0` |
| `files/features/mars/watermetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/mars/watermetal.tdf` | `5cc952c0a1b5cea3b7d2052ff112b1a32ccfb05b8482c96b4b60179a9ae65762` |
| `files/features/moon/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/moon/METAL.TDF` | `90daf1e5651475a79eb0552998744b4413bf7c000e4120ea00ab9c6f7deb75e8` |
| `files/features/slate/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/slate/METAL.TDF` | `347fe92fc229f4eaf26d468d3413a2e60650129729bb80a482137a04551b82d7` |
| `files/features/water/metal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/water/metal.tdf` | `05cb2801ab9fa9f6eb71c558d864fe3e5d6d1f2f62a767493af106d4e598bc3f` |
| `files/features/wetdesert/metal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/wetdesert/metal.tdf` | `19e2c67620352396d67b35baf249a9207aa64cc45a110da84d7b5a54afcaec33` |

## Differences from the originals

No package needed a fix. The comparisons of `finite-metal` and `finite-metal-cs` with their imports left nothing over, so those rows have no allowed file. A `remove()` and a blank `Copyright` compare as one drop. The hook removes `MetalMake` from the same units the originals' rules do (with Counter Strike units, not from a unit whose sound category is GATE), and the feature files are the originals' bytes. FLUXOR and QUARK are set to 5 metal only for the Counter Strike choice, by name, as that original does. Extractors, CORBHMTH and the converter found by that description are removed, which is what a blank `Copyright` did. Metal makers remain. Both originals told the player to add No Porc to remove them.

`finite-metal-uh` is the same package over Uberhack 4.0. Its report drops CORBHMTH as well as the extractors that mod adds. The faithful import lists `works-with: ["ta-3.1c"]` (its `UH` code is not mapped to a mod), so `oa-tool mutator diff` refuses to apply that import on Uberhack and the versus comparison cannot be run. That row names no import: its recorded report is the check.

- The original's download files re-list the base factories' units on extra pages; the curated package leaves them out. One `right only menu added <factory> * * *` for each base factory the comparison showed: ARMALAB, ARMASY, ARMAVP, ARMHP, ARMLAB, ARMSY, ARMVP, CORALAB, CORASY, CORAVP, CORHP, CORLAB, CORSY, CORVP.
- The original's Armlatnk.TDF overwrote 3.1c's file of that name, taking the Panther off the Arm advanced vehicle plant. The comparison shows `right only menu removed ARMAVP 4 0 ARMLATNK`.
- Builders offer the directional factories through menus: the original's build pages are protected, so its faithful import offers them nowhere. One `left only menu added * * * <factory>` for each of the 36 directional factories.

The manifest sets `clashes: replace`, which is what the original's whole-file override did and keeps one plant per name. On a mod that already has these plants, such as Uberhack, the package's 2001 copies replace the mod's. Uberhack 4.0's ARMLABE, for example, has `YardMap=yooooy cccccc cccccc cccccc cccccc yooooy` and adds `ALL MDF` to its category; the package's file takes that plant's place.

The original's 40 pages are mostly 3.1c's own pages rewritten: 34 replace an existing page (ARMCOM2, ARMCK2 and 3, ARMCS1, ARMACK1, the CORCH and CORCSA pages, and the like). Six are new fourth pages that hold the hover plant (ARMCA4, ARMCK4, ARMCV4 and the Core three). On each replaced page, the west, north and east buttons overlap the base plant's 64 by 64 cell (for example ARMLABW at 0,27, ARMLAB at 16,27 and ARMLABE at 48,27 on ARMCOM2), drawn with the page's own art. It also moved ARMHP from ARMCH5 and ARMCSA5 to page 3. The curated package cannot overlap buttons or change those pages, so it uses a page of the builder's own.

The curated package offers each new plant from every builder that already offers the base plant. A plant is a unit that builds and does not move, and that test applies to the offered unit and to the candidate named by adding W, then N, then E. It names no builder, so a mod's constructors and commanders get them too. The first plant opens a page of the builder's own. Further plants fill that page. A request past page 7 takes the first free slot, and a builder with none left is skipped, with a printed line naming the builder and the plant. The import cannot offer them: the 40 constructor pages and the 117 GAFs were refused, so no builder's page lists the new plants. The added buttons draw without a picture.

The import also keeps 48 download files that re-list units of a base factory. The curated package leaves those out, including `download/Armlatnk.TDF`. The original's Armlatnk.TDF overwrote 3.1c's file of that name and took the Panther (ARMLATNK) off the Arm advanced vehicle plant's third page; this package does not. `download/ARMAVP3R.TDF` re-lists the Panther on an authored page, where it is not shown.

| File | UNITMENU |
|---|---|
| `download/ARMALAB2L.TDF` | ARMALAB,ARMALAB,ARMALAB |
| `download/ARMALAB2R.TDF` | ARMALAB,ARMALAB,ARMALAB |
| `download/ARMALAB3L.TDF` | ARMALAB,ARMALAB,ARMALAB |
| `download/ARMALAB3R.TDF` | ARMALAB |
| `download/ARMALAB4L.TDF` | ARMALAB,ARMALAB |
| `download/ARMALAB4R.TDF` | ARMALAB |
| `download/ARMASY2L.TDF` | ARMASY,ARMASY,ARMASY |
| `download/ARMASY2R.TDF` | ARMASY,ARMASY,ARMASY |
| `download/ARMASY3L.TDF` | ARMASY,ARMASY |
| `download/ARMASY3R.TDF` | ARMASY |
| `download/ARMAVP2L.TDF` | ARMAVP,ARMAVP,ARMAVP |
| `download/ARMAVP2R.TDF` | ARMAVP,ARMAVP,ARMAVP |
| `download/ARMAVP3L.TDF` | ARMAVP,ARMAVP,ARMAVP |
| `download/ARMAVP3R.TDF` | ARMAVP,ARMAVP,ARMAVP |
| `download/ARMHP2L.TDF` | ARMHP,ARMHP,ARMHP |
| `download/ARMHP2R.TDF` | ARMHP,ARMHP,ARMHP |
| `download/ARMLAB2L.TDF` | ARMLAB,ARMLAB,ARMLAB |
| `download/ARMLAB2R.TDF` | ARMLAB,ARMLAB |
| `download/ARMLAB3L.TDF` | ARMLAB |
| `download/ARMLAB3R.TDF` | ARMLAB |
| `download/Armlatnk.TDF` | ARMALAB |
| `download/ARMSY2L.TDF` | ARMSY,ARMSY,ARMSY |
| `download/ARMSY2R.TDF` | ARMSY,ARMSY |
| `download/ARMVP2L.TDF` | ARMVP,ARMVP,ARMVP |
| `download/ARMVP2R.TDF` | ARMVP,ARMVP,ARMVP |
| `download/CORALAB2L.TDF` | CORALAB,CORALAB,CORALAB |
| `download/CORALAB2R.TDF` | CORALAB,CORALAB,CORALAB |
| `download/CORALAB3L.TDF` | CORALAB,CORALAB,CORALAB |
| `download/CORALAB3R.TDF` | CORALAB,CORALAB |
| `download/CORALAB4L.TDF` | CORALAB,CORALAB |
| `download/CORALAB4R.TDF` | CORALAB |
| `download/CORASY2L.TDF` | CORASY,CORASY,CORASY |
| `download/CORASY2R.TDF` | CORASY,CORASY,CORASY |
| `download/CORASY3L.TDF` | CORASY,CORASY |
| `download/CORASY3R.TDF` | CORASY |
| `download/CORAVP2L.TDF` | CORAVP,CORAVP,CORAVP |
| `download/CORAVP2R.TDF` | CORAVP,CORAVP,CORAVP |
| `download/CORAVP3L.TDF` | CORAVP,CORAVP |
| `download/CORAVP3R.TDF` | CORAVP,CORAVP |
| `download/CORHP2L.TDF` | CORHP,CORHP,CORHP |
| `download/CORHP2R.TDF` | CORHP,CORHP,CORHP |
| `download/CORLAB2L.TDF` | CORLAB,CORLAB,CORLAB |
| `download/CORLAB2R.TDF` | CORLAB,CORLAB |
| `download/CORSY2L.TDF` | CORSY,CORSY,CORSY |
| `download/CORSY2R.TDF` | CORSY,CORSY |
| `download/CORVP2L.TDF` | CORVP,CORVP,CORVP |
| `download/CORVP2R.TDF` | CORVP,CORVP,CORVP |
| `download/CORVP3L.TDF` | CORVP |

## Notes from the families these packages came from

These sentences are the old families' own openings. The package counts in them are those families', and a folder they name is the one this grouping replaced.

### Economy and build

Thirteen packages replace the eighteen TA: Mutation economy and build mutators. MAC (macraig)'s eight one-side copies of Cornucopia, Cost Cutter, Jumbo Storage and Enhanced Wind Generators are options on those packages. Variants of one mutator are options on one package. Every rule is Lua. No package takes a file from the originals.

### MAC's unit mutators

Sixteen packages replace the thirty-five unit-rule mutators MAC (macraig) wrote from 2003 to 2008. Arm, Core and every-side copies of one mutator are a Side choice on one package. Agile Aircraft's two designs are a Version choice. Enhanced LOS's three sight settings are a Sight choice, and the package ships the LOS_1600 table with every one of them. Easy Self-Destruct's Arm transport change is a Transportable choice.

### MAC's unit tweaks

Fourteen packages replace sixteen of MAC's (macraig) single-unit tweaks and his two unit adders. The tweaks name the units they change, as the originals do, so a game without that unit is unchanged. The two adders ship the original's files in `files/`. Files lists each path, the archive and entry it came from, and its SHA-256. Absolute Annihilation 6.0 Tweaks is not converted. No comparison needs an allowed difference. The reports are in `_verify/`.

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. MAC's codes (`UTASP`, `TAUCP17`, `UT40b`, `AA60` and the rest) stay on each legacy record.

### Finite Metal and Directional Factories

Two packages replace three of the four igi-server additions that are not in MAC's pack. Finite Metal turns metal patches into rocks and wrecks and takes metal income away. Directional Factories adds Uberhack's east, west and north-facing plants and offers them from whatever already builds the plant they face. D-TAM is not converted. The comparison reports and `directional-factories.allowed` are in `_verify/`.

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. The compatibility codes stay on each legacy record.

The Counter Strike behaviour is the option `counter_strike` (`yes` or `no`, default `no`). An option id is a Lua name, so it cannot be `counter-strike`.

## Build

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" economy
```

That prints `build: economy: 38 imports, 19 packages`. Pack and check from `build/economy`. Paths in `_verify/comparisons.tsv` are relative to that folder. A row whose `mod` is not `-` is diffed with `--mod-dir`, and a row whose `map` is not `-` is diffed with `--map`. `_imports.tsv` lists an import only when a comparison row uses it. An original kept for the record, or compared against no import, is not a row of that table.
