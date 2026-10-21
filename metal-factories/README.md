# Finite Metal and Directional Factories

Two packages replace three of the four igi-server additions that are not in MAC's pack. Finite Metal turns metal patches into rocks and wrecks and takes metal income away. Directional Factories adds Uberhack's east, west and north-facing plants and offers them from whatever already builds the plant they face. D-TAM is not converted. The comparison reports and `directional-factories.allowed` are in `_verify/`.

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. The compatibility codes stay on each legacy record.

The Counter Strike behaviour is the option `counter_strike` (`yes` or `no`, default `no`). An option id is a Lua name, so it cannot be `counter-strike`.

## Originals

| Original | Author | Source | Import | Package | Option | Row |
|---|---|---|---|---|---|---|
| Finite Metal TA | Drinken; features by BSR | `igi-server/finitemetalta_mutator/{}FiniteMetal.tam` | `finite-metal-ta` | `finite-metal` | counter_strike no | `finite-metal` over 3.1c, `finite-metal-uh` over `uberhack-v4.0` |
| Finite Metal TA (Counter Strike) | Drinken | `igi-server/finitemetalta_cs_mutator/{}FiniteMetal_CS.tam` | `finite-metal-ta-counter-strike` | `finite-metal` | counter_strike yes | `finite-metal-cs` over 3.1c |
| Directional Factories | Duct_Taper | `igi-server/tam-directionalfactoriesv2/}{DirFact.tam` | `directional-factories` | `directional-factories` | — | `directional-factories` over 3.1c |
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

## Files from the originals

Each hash is the SHA-256 of the archive entry, read with `oa-tool extract`. The build checks it and copies the bytes unchanged. Paths keep the archive's names.

`finite-metal` ships the 16 feature files. Every section is a metal patch the file turns into a rock or a wreck. `directional-factories` ships the 36 unit files, 72 models (the plants and their wrecks), 36 scripts, 36 pictures, 4 wreck and heap files in `features/corpses/`, and the 121 download files whose `UNITMENU` is one of the 36 new factories.

| Package path | Source | Entry | SHA-256 |
|---|---|---|---|
| `finite-metal` `files/features/acid/AcidMetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/acid/AcidMetal.tdf` | `a825241fabbb0e5f9d11fe4ca8eab5d2415198a323f48650fd1a59572ff84e76` |
| `finite-metal` `files/features/archi/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/archi/METAL.TDF` | `f1f0143ab0e3497e00094739d50500737ef7e40254ff05f30cc51a031c3651ea` |
| `finite-metal` `files/features/archi/watermetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/archi/watermetal.tdf` | `ad794cf3deae0e99fbd40b8afab255ded38dfd59287f5be8b78c296a80490cf1` |
| `finite-metal` `files/features/crystal/Crystal-Metal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/crystal/Crystal-Metal.tdf` | `c260cdb33c317fe825f51660abd5fc34ba7816728734980a6bb8aacee633019c` |
| `finite-metal` `files/features/desert/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/desert/METAL.TDF` | `ef66a4ba50f6d1f204b0012c1f24957378babb049030f1b474c9b5f44bab0c64` |
| `finite-metal` `files/features/green/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/green/METAL.TDF` | `51767f75d6283310c49963840f411010a5c4d10761a975dc56ee4fc99e3d2a78` |
| `finite-metal` `files/features/green/Watermetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/green/Watermetal.tdf` | `319dfb9b98fb5d315b69c170d89dfcb6175cde90fb0c051db664c7307b50f921` |
| `finite-metal` `files/features/ice/IceWaterMetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/ice/IceWaterMetal.tdf` | `47935a030aef7ccde719a7eb720d8bd2370d7230295da0257efb8430b912ce48` |
| `finite-metal` `files/features/ice/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/ice/METAL.TDF` | `5b193691a940ada69cd7f168d5dc096e61a52fa96896e5e45b6a1f186930f837` |
| `finite-metal` `files/features/lava/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/lava/METAL.TDF` | `6b070dad94b3bc638d2b9ca79c268409b0357b43c80ed716ddf69d745e4aeff4` |
| `finite-metal` `files/features/mars/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/mars/METAL.TDF` | `8634b8ae1dc1fb143f3d7f99c7998b7109753e5f5d8095776e20bf34e0045af0` |
| `finite-metal` `files/features/mars/watermetal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/mars/watermetal.tdf` | `5cc952c0a1b5cea3b7d2052ff112b1a32ccfb05b8482c96b4b60179a9ae65762` |
| `finite-metal` `files/features/moon/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/moon/METAL.TDF` | `90daf1e5651475a79eb0552998744b4413bf7c000e4120ea00ab9c6f7deb75e8` |
| `finite-metal` `files/features/slate/METAL.TDF` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/slate/METAL.TDF` | `347fe92fc229f4eaf26d468d3413a2e60650129729bb80a482137a04551b82d7` |
| `finite-metal` `files/features/water/metal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/water/metal.tdf` | `05cb2801ab9fa9f6eb71c558d864fe3e5d6d1f2f62a767493af106d4e598bc3f` |
| `finite-metal` `files/features/wetdesert/metal.tdf` | `igi-server/finitemetalta_mutator/{}FiniteMetal(1).ccx` | `features/wetdesert/metal.tdf` | `19e2c67620352396d67b35baf249a9207aa64cc45a110da84d7b5a54afcaec33` |

| Package path | Source | Entry | SHA-256 |
|---|---|---|---|
| `directional-factories` `files/download/ARMALABE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABE2L.TDF` | `7012827cb365a1682db2b0a24e94949a0f4ac4e8df03975dc72053f244bf96bd` |
| `directional-factories` `files/download/ARMALABE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABE2R.TDF` | `46288391dd37b0b32e3e09f98f0e0e10fd7f8d55b36b6197343bb74db4c6f47b` |
| `directional-factories` `files/download/ARMALABE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABE3L.TDF` | `b3bc1d0c7d89860f5f82986976196f0ee8f4b3d3200b9ceda8d80aeb5e4709ff` |
| `directional-factories` `files/download/ARMALABE3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABE3R.TDF` | `0979cc39cb51987fbcda17241445931dd4a9ac4f4c1ce3a928a372576a8a7199` |
| `directional-factories` `files/download/ARMALABE4L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABE4L.TDF` | `fc4a961542c2ca4c3811e7cfe3f46a5fb8cc618d3e6f62c6d23ba228ac9cf333` |
| `directional-factories` `files/download/ARMALABE4R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABE4R.TDF` | `705b7a861ec7e3d8079cbba3ace2e55b6d14b8fa3f887951fe1a770b31b10ffa` |
| `directional-factories` `files/download/ARMALABW2L.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABW2L.tdf` | `969d9ba6ce025065d78cb4de44fb53315f2f0b4265c39b4c69903e94a4331f29` |
| `directional-factories` `files/download/ARMALABW2R.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABW2R.tdf` | `a60f235019fa1a89242a084e055f17dcfe4fe3d321ee80a0b729182d5258c3f1` |
| `directional-factories` `files/download/ARMALABW3L.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABW3L.tdf` | `c13965b0679a64998c7fc22027eb0a287fd9a345152932201e6d7d80c553c5b1` |
| `directional-factories` `files/download/ARMALABW3R.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABW3R.tdf` | `bb404996e857d87395f7254cae74eb8f87d5a1f95ee9fd2e17542adf2af2fe89` |
| `directional-factories` `files/download/ARMALABW4L.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABW4L.tdf` | `92be1ef420bc4d30871703aeea050fb456a029daaa11e4c2f72aef17673d5096` |
| `directional-factories` `files/download/ARMALABW4R.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMALABW4R.tdf` | `0265802621ac515c9b3e5d028fa88ef7836c42d4967f2740d1ed3e04c1f4f5ac` |
| `directional-factories` `files/download/ARMASYE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYE2L.TDF` | `19df08706d596237ab160b746ae0c5fd5979b4b881b4245ed67389f88cc61142` |
| `directional-factories` `files/download/ARMASYE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYE2R.TDF` | `3bc7072f14932cc81b960c12c948a1283e77ab55d568736621af5aca0b52ae46` |
| `directional-factories` `files/download/ARMASYE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYE3L.TDF` | `1e8b4ec04f0189aa9b7c2f19419346ebcb1f74abc6f4cd838cbe1340edcdcc15` |
| `directional-factories` `files/download/ARMASYE3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYE3R.TDF` | `d1833c0e22c58f0d55cf564b3408a9c3cedcf2cc73c768f549e50d37bd3cbda1` |
| `directional-factories` `files/download/ARMASYN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYN2L.TDF` | `78e3ac7aec637392fb462fe590dd8a2844b8d6932ee2174b186efd597cd40109` |
| `directional-factories` `files/download/ARMASYN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYN2R.TDF` | `9586f0ca83f1a22f6f5aa855a34c17a7c92d8cf2bbd72e8a1db53293ba6f90dc` |
| `directional-factories` `files/download/ARMASYN3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYN3L.TDF` | `08ecedef394c01c63152f8c30b33aaf8e33f9d3ce0058e53a8fc6ab883af4949` |
| `directional-factories` `files/download/ARMASYN3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYN3R.TDF` | `7b76bc477692a6e54b7c79a3c621c054d92a225f78005b0bfdd8196b45a0c07e` |
| `directional-factories` `files/download/ARMASYW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYW2L.TDF` | `6a59ef90b6c0e3b5938ce3b4eba0d14a4bce29c2b0b325bd5bc0dd53fcbe1962` |
| `directional-factories` `files/download/ARMASYW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYW2R.TDF` | `110b5460230f80b6a28ed07cd060a8fe1530ebdf8f93636d1483d8d9c5a13a64` |
| `directional-factories` `files/download/ARMASYW3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYW3L.TDF` | `62bdc59f861bcff382bd3f60629f9322465a592ab92e14920a49a196e7dc7b7c` |
| `directional-factories` `files/download/ARMASYW3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMASYW3R.TDF` | `4dd8d7a6d7653080e1020d405e8b0663260028f1dbcd02612934bfe406819979` |
| `directional-factories` `files/download/ARMAVPE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPE2L.TDF` | `cf93972a8200858043ffbca9f1e31671e2bf583f601ef39e9320a53f37cbe26b` |
| `directional-factories` `files/download/ARMAVPE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPE2R.TDF` | `d6208600cd2a125b1ade89792162907952e960ccd60930918a945feb4d015548` |
| `directional-factories` `files/download/ARMAVPE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPE3L.TDF` | `c8121e751abf888547bdbd2124ffe8601e0f17e0e50e1e75c9ff6eae091d2844` |
| `directional-factories` `files/download/ARMAVPE3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPE3R.TDF` | `8c30ef551bfd6395e9164a493e7cdcb8c9d2b5207c0b70fb63656769ee7f392f` |
| `directional-factories` `files/download/ARMAVPW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPW2L.TDF` | `ddcb1999b35963058db49f36700280ca65e64f3f5014d3b9c9d80eeaf1624ada` |
| `directional-factories` `files/download/ARMAVPW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPW2R.TDF` | `82bcf991e75d8ec5532fae67f58a9ad945c4bb225879344ecdfc622bae2b3953` |
| `directional-factories` `files/download/ARMAVPW3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPW3L.TDF` | `bbb4c1f3efa5a93fa88b5470fca6e8a289331a9290c8d01fd14c179cc8ba3d3b` |
| `directional-factories` `files/download/ARMAVPW3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMAVPW3R.TDF` | `0c5a4f99a8be4176d1858d3a315710f5705b82181b5c8ae939b6e69bd8ae0694` |
| `directional-factories` `files/download/ARMHPE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMHPE2L.TDF` | `3abbd8697beffc536036c6b919567a182836433cc5cfcb1a4ae3a7ba1c402108` |
| `directional-factories` `files/download/ARMHPE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMHPE2R.TDF` | `90290d6d65e0cfc272e3ee53cee683af8346ea8ab8774731c3e8fa9540e238dc` |
| `directional-factories` `files/download/ARMHPW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMHPW2L.TDF` | `f77fe912460db2e6771b40de29457f8ab87b840ad2c7b31c3d230af59e7bd05b` |
| `directional-factories` `files/download/ARMHPW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMHPW2R.TDF` | `6c9f03d28a77656e12bdfaf2a4481e2b61f51dc0ae536926683dabbe55687d10` |
| `directional-factories` `files/download/ARMLABE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABE2L.TDF` | `ddde266664d63be59e3bcaf37bbf8bdf3a407b30f0f327cc3779f99801d3d943` |
| `directional-factories` `files/download/ARMLABE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABE2R.TDF` | `cc3282bd61837d8498aa9102ba19d4cef4cca81e114a9038675b09d1e11b8d23` |
| `directional-factories` `files/download/ARMLABE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABE3L.TDF` | `558f2b11e6c9f0e5687a11a2ac2bc05852df7bc71752fd8f4bc47c48361cb451` |
| `directional-factories` `files/download/ARMLABE3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABE3R.TDF` | `39e62512932b401d7329679ea01a1de52474a4d2a15ad7cfaf2c1686603688c1` |
| `directional-factories` `files/download/ARMLABW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABW2L.TDF` | `6c0c969138d64f090b9380e63937eba17e9be2f068d7d41dcce78cccb74aefa2` |
| `directional-factories` `files/download/ARMLABW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABW2R.TDF` | `f8e4f235cf4923f45c84728399d80935b7322fc2f40fe0422919988112b16102` |
| `directional-factories` `files/download/ARMLABW3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABW3L.TDF` | `fced3d9e9b49a66ae539a70ad261b292b210d4cc5698f108d004bdf04d580a25` |
| `directional-factories` `files/download/ARMLABW3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMLABW3R.TDF` | `558c09bcd02dbcfaa90064194e682bd2150a762d4d81b5992a1b72c10deb0c02` |
| `directional-factories` `files/download/ARMSYE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMSYE2L.TDF` | `e5057b179e90afea4885c463d53a2341418381b7619354bbee187197962703e8` |
| `directional-factories` `files/download/ARMSYE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMSYE2R.TDF` | `e20c8557986f8fc4a2149e45eb39d511f38a86c6c9e652f7bb4781c09b1d8d7b` |
| `directional-factories` `files/download/ARMSYN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMSYN2L.TDF` | `2f563f8adc8e666954a7619cd40114b72b190ee90921be3cfe9d23b80d532a7a` |
| `directional-factories` `files/download/ARMSYN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMSYN2R.TDF` | `4c68b9f45727c34a3e86bf81fe418701077bd716092edd74da16e54f87bc8c9d` |
| `directional-factories` `files/download/ARMSYW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMSYW2L.TDF` | `7c4d430adae436936ce1985782146115b4dea97439dc0a961d36a5752e61cc5f` |
| `directional-factories` `files/download/ARMSYW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMSYW2R.TDF` | `ebfe67c00124d42a7f6fb307617e2938d8932a267f2b1d0c54e8275e075d0a75` |
| `directional-factories` `files/download/ARMVPE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMVPE2L.TDF` | `f58b09442e76fd28eec78cc384c6ff3aaba8a3d5a7342ea773d33b04a2f40f53` |
| `directional-factories` `files/download/ARMVPE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMVPE2R.TDF` | `708aa99d2927bf906cf55d9b4abad8c67b366d919823727a73d2a521de628e7c` |
| `directional-factories` `files/download/ARMVPN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMVPN2L.TDF` | `d754c3b71badc58734341e4ae54c34df11f200c6f8acf1cbb1720e92f525fecb` |
| `directional-factories` `files/download/ARMVPN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMVPN2R.TDF` | `1ad398b10e1153d3bcb3df1cdd2d221d6a6dd893dcc0555077b0cee94f98438f` |
| `directional-factories` `files/download/ARMVPW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMVPW2L.TDF` | `300b6a8ae024c89c0d592b48936da399d40e4751846a4d3b4ed4cc741877bd31` |
| `directional-factories` `files/download/ARMVPW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/ARMVPW2R.TDF` | `8c217d1838e9669536bdec918cce4c2a22e2fd9fff68d15a0375b56251e25b9a` |
| `directional-factories` `files/download/CORALABE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABE2L.TDF` | `4050467fb5f7c31dcdb72e011b09c34ff2ada19911ddf69de99d24deeec89d44` |
| `directional-factories` `files/download/CORALABE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABE2R.TDF` | `d297389ca605cbf14dd26918cd3e6c2dbc93a45a1f9cd63d63036503d74afc80` |
| `directional-factories` `files/download/CORALABE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABE3L.TDF` | `791dab6b1421db55713086772d62841a576e78d690b04e3cb3659bd77c57e13c` |
| `directional-factories` `files/download/CORALABE3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABE3R.TDF` | `062505cac3b0eea24771daf419817ce6db13c0cb3f971159aa8b21e69c9bbf05` |
| `directional-factories` `files/download/CORALABE4L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABE4L.TDF` | `884e92f7375e5cee9aedaa604dde51f16f32c4905473c93ac56497be68d683eb` |
| `directional-factories` `files/download/CORALABE4R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABE4R.TDF` | `3ba40c053262c8a4856345d2e081f0c102074d1e8cf7e46d6339a4caff87ef27` |
| `directional-factories` `files/download/CORALABN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABN2L.TDF` | `ca3c6fd9027afc2f606e4842d2ea7696f87927557e1fb65e5277b68df93603d7` |
| `directional-factories` `files/download/CORALABN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABN2R.TDF` | `54bfc9592f5c859b9ef319d47d716e2c07b6a2f0e725b1714d3c050c4f2e0612` |
| `directional-factories` `files/download/CORALABN3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABN3L.TDF` | `bbade03db5fdc748017d227d7298be548c944c5d5ca8ec6def3dba888b8e037c` |
| `directional-factories` `files/download/CORALABN3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABN3R.TDF` | `17791384a6faafcf2fb7b7778e43934a36cada8df5664b86b2242c9dc396332d` |
| `directional-factories` `files/download/CORALABN4L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABN4L.TDF` | `68cce95202924e5e5305dfa8b524e5d47c1b8cca0d2dacc611aabcc944810432` |
| `directional-factories` `files/download/CORALABN4R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABN4R.TDF` | `1345585c0d888a9dc22a8522f8aa45961e0cf6e129bca33703331d413be76d4e` |
| `directional-factories` `files/download/CORALABW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABW2L.TDF` | `5e0e621f2a268336fb336c359956b35c9992f0f92d0fb9af5d31e747e21b37c2` |
| `directional-factories` `files/download/CORALABW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABW2R.TDF` | `b962f49065c0d56b9f29aed23357e3757fb84a0485b566968b7d4b4b05673cc8` |
| `directional-factories` `files/download/CORALABW3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABW3L.TDF` | `e0ef7e502bf42c78d19a377bc452355271a49b0849d0304b5a4b563d2188410d` |
| `directional-factories` `files/download/CORALABW3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABW3R.TDF` | `0c33802c2d99278bd1afd40ba662443713d8a4cf914a0f7492a1290ca10e0007` |
| `directional-factories` `files/download/CORALABW4L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABW4L.TDF` | `6def59bd852ea4fbb440ba6fad323181c2f63b8f7701d6907eeaa699fbb08dba` |
| `directional-factories` `files/download/CORALABW4R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORALABW4R.TDF` | `0958ebfe50427a43ee71f2d0117a16d8c17685396d9e82533f81ebb69191a5af` |
| `directional-factories` `files/download/CORASYE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYE2L.TDF` | `04e03a5cafe9aba5d3c2df48b50981ad7317512f6bb4194b1df1583fcf0c5a4d` |
| `directional-factories` `files/download/CORASYE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYE2R.TDF` | `32fc48dd99b24ceadd2db1156dea6e1b39dfc165d87b0dfe2d3130fe828e0a47` |
| `directional-factories` `files/download/CORASYE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYE3L.TDF` | `47de354083649ba1bf0882674db538e20f41e18593c009f624472faec9dacb19` |
| `directional-factories` `files/download/CORASYE3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYE3R.TDF` | `5abc3f02a5846457e2e587b27b0c0dae3124fe78376ab641b094921052a5f053` |
| `directional-factories` `files/download/CORASYN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYN2L.TDF` | `fe3673099384ec904b320bb899c2355d2677124201fa8c308b20dfafc7ca9c6e` |
| `directional-factories` `files/download/CORASYN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYN2R.TDF` | `6b749e97e2c024e1e58057feacfb7b3877b8486b6b888391277e3641dcf3c856` |
| `directional-factories` `files/download/CORASYN3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYN3L.TDF` | `33112fc42710e183599470b61e158c12ae1b636e5e1b27457bf1d095c0e6de9b` |
| `directional-factories` `files/download/CORASYN3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYN3R.TDF` | `7efa80da82434ccaedcf30284f93f7058a80029f8112674342ade85baf291b39` |
| `directional-factories` `files/download/CORASYW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYW2L.TDF` | `9437bde9a5b809d7ff67f2fc4d0f3073b7d0a416d7306387488a5b94e1daa854` |
| `directional-factories` `files/download/CORASYW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYW2R.TDF` | `acbd8cb870a4220ec8154b5189eba959e6c3556560d45bd8f7ead44ab2a93852` |
| `directional-factories` `files/download/CORASYW3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYW3L.TDF` | `3f796bde8ece82b7300742539d4bb954015e4adb5c44ddd9ba7c4354857b46eb` |
| `directional-factories` `files/download/CORASYW3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORASYW3R.TDF` | `bd114798d1493d7b50949cc0a5125aa65f2a4634aec5d9f922f9de2d6a66eae0` |
| `directional-factories` `files/download/CORAVPE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPE2L.TDF` | `f2aa0187911d75d97b31454e43ca7ab8d09c9dd439411a7ff069ac7adfea814f` |
| `directional-factories` `files/download/CORAVPE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPE2R.TDF` | `9f48b55d4e4bc3a67d1c44d95e3b13a68523377b3b648f65d5d2f869aa5ad11c` |
| `directional-factories` `files/download/CORAVPE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPE3L.TDF` | `9d914a625805385eb740b5996a6a7a7bf17b6cf4d1d28f5a3a306512a6ee80ac` |
| `directional-factories` `files/download/CORAVPE3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPE3R.TDF` | `ad4a44bfe382a81051bb81d8d0714f3b00aade4c75112fe0cb4f3bf727fd2440` |
| `directional-factories` `files/download/CORAVPN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPN2L.TDF` | `1da36e3f1aa5121b15e6509a9e1ead514bd5686aaf46cd08b1382d147f0d0db8` |
| `directional-factories` `files/download/CORAVPN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPN2R.TDF` | `5d23b0c178468321358c5ebccf9e6e5e5c4426c9f431674365bf3e78c65c6ca9` |
| `directional-factories` `files/download/CORAVPN3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPN3L.TDF` | `4988c3057893262ae067d2c2e4ee08e6e3efc348a07a9dd856e672d815321179` |
| `directional-factories` `files/download/CORAVPN3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPN3R.TDF` | `bc049e2d2175fb0c63056e18d55dd42bf99b3fae8e0ae3b01635e0d656a44ffd` |
| `directional-factories` `files/download/CORAVPW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPW2L.TDF` | `07fdddb947236754597df9d8fc35d00c307fc1a2d23214506be603b42b5a1409` |
| `directional-factories` `files/download/CORAVPW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPW2R.TDF` | `dd78ed563685bbcacbcc85796aa08a662a8b2ff6d1090b16cd66ac54322340b9` |
| `directional-factories` `files/download/CORAVPW3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPW3L.TDF` | `82187e4c685b6f657ffc81b6776d7c508cf5e4c46fcc3fdece638f29857bb200` |
| `directional-factories` `files/download/CORAVPW3R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORAVPW3R.TDF` | `c847ab1ce0e97610990ee0cdc8acb5b64f4a334d91eb6065ed77c75404270ac5` |
| `directional-factories` `files/download/CORHPE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORHPE2L.TDF` | `347bb27c9fa47bb745363ff8e8b19fa8a89f0ca633e872477cf9a7caea5bd66c` |
| `directional-factories` `files/download/CORHPE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORHPE2R.TDF` | `5df9a7241bfadb175d7203dbcc86344e621a3e4f3c732f5ef9c14de70ef6d1bb` |
| `directional-factories` `files/download/CORHPW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORHPW2L.TDF` | `270acac314dff62d23d472431eb19abe3ec65b6b99a2ce11ae2c90a885df691d` |
| `directional-factories` `files/download/CORHPW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORHPW2R.TDF` | `e2b4f51949a3e13b270a11352219e7c169cca208318fdf7a40a94b2e42779a87` |
| `directional-factories` `files/download/CORLABE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORLABE2L.TDF` | `9227632dd015315828236139ec98ba3ee2065404155302727ea0f710b4cc3d6e` |
| `directional-factories` `files/download/CORLABE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORLABE2R.TDF` | `d763c4a1ea7ca330bd134febcfc5905aedd5d49f677ade57e88c85207e5617e3` |
| `directional-factories` `files/download/CORLABW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORLABW2L.TDF` | `9e8d769819d234adf08818d40a98e959313a393ff51119add5c9dfe4d15fcb34` |
| `directional-factories` `files/download/CORLABW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORLABW2R.TDF` | `2281b4244803e93f6e8ce3a6bf509c8b5b0a24f335794e4101477b79d90aef84` |
| `directional-factories` `files/download/CORSYE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORSYE2L.TDF` | `3a93d2b764cdf0bdbb622185637873f57ace09a0d6a5fd13ee34a73c853d9b7a` |
| `directional-factories` `files/download/CORSYE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORSYE2R.TDF` | `efd99f476b8e8c0a3fb1a3477fdfeece6d0b892da8d96e797d7c7e603674b3b9` |
| `directional-factories` `files/download/CORSYN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORSYN2L.TDF` | `e4daf7e9da9168cb5179dce3863e760b62b6675deb406a2c64f540e0deeb6f0d` |
| `directional-factories` `files/download/CORSYN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORSYN2R.TDF` | `40f05c1d9db9d56d94f6c1bec23657a89a6ec2a1f6d1c33f71841785bae12cbb` |
| `directional-factories` `files/download/CORSYW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORSYW2L.TDF` | `2be1ca1b897ce608c7639a07b8d21d6adfd54194a0c2d64c6d8787ab897205ce` |
| `directional-factories` `files/download/CORSYW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORSYW2R.TDF` | `034c2ce1d49198ec6e8e3c1d079133b7a44f05998c1f64f81ff9618a92c41de4` |
| `directional-factories` `files/download/CORVPE2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPE2L.TDF` | `19065e37cb1db596ad8d16ad46fd90ec05c8de3130345b69f67143b1e3b1df19` |
| `directional-factories` `files/download/CORVPE2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPE2R.TDF` | `44e2d9a0054b44bbdae465f6485530a800913344f3eb3d70f95f5d71798daf7b` |
| `directional-factories` `files/download/CORVPE3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPE3L.TDF` | `d614422b4e0f4f257fb7d18a98acd69a1ab75b6d103f62d79a4c89bcdaabd68d` |
| `directional-factories` `files/download/CORVPN2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPN2L.TDF` | `67d234872a228e854c94c6a2c375ba0d9ae2591c8d1b34d0582523d329c5ef1d` |
| `directional-factories` `files/download/CORVPN2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPN2R.TDF` | `161ac8fe8072fd58e44e59e38ba622a16af25219623385f00d1cce60f1bd3562` |
| `directional-factories` `files/download/CORVPN3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPN3L.TDF` | `cf126c809fe7d373b42dfb358ba2eb01a2be91a46d8bee12ac7b7782c545c44a` |
| `directional-factories` `files/download/CORVPW2L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPW2L.TDF` | `11bf27f1d076aa7be2d7bde7ecc773c6b97006644c5e5699275762db24b15753` |
| `directional-factories` `files/download/CORVPW2R.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPW2R.TDF` | `9c559e401ed54fcb32a563d2a89a0a9ef262897467cbc8ed44e77a9d3fc2f9b7` |
| `directional-factories` `files/download/CORVPW3L.TDF` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `download/CORVPW3L.TDF` | `3c474edccca61eee0158d61b5db3b3089323a69c244f7dde0dadcb60ced21fa9` |
| `directional-factories` `files/features/corpses/arm_dirfact_corpses.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `features/corpses/arm_dirfact_corpses.tdf` | `c319dd0bf8e34d71f18c2a209ac4be5e3f2458234cefdd068501ab3fd81b311d` |
| `directional-factories` `files/features/corpses/arm_dirfact_heaps.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `features/corpses/arm_dirfact_heaps.tdf` | `cb5aa3ecbfa9e17844a8581231b782cdc1ade122f28673e47b976b74192342a6` |
| `directional-factories` `files/features/corpses/core_dirfact_corpses.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `features/corpses/core_dirfact_corpses.tdf` | `51469555be87fc41cd04ae59ca0f1375c17651a0ce988c6c517b48a8b66b8f95` |
| `directional-factories` `files/features/corpses/core_dirfact_heaps.tdf` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `features/corpses/core_dirfact_heaps.tdf` | `5c73596f39a859026c7b0ac3af322716bfd67676e7061b400f0fea76568542e0` |
| `directional-factories` `files/objects3d/armalabe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armalabe.3do` | `135d0fa585aa95f066ea65b81ef4afd8db64bb42c7dbd7873e310eff84449b91` |
| `directional-factories` `files/objects3d/armalabe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armalabe_dead.3do` | `586e6fb2ab9ee9ffcacb5843d9aa7290d4bc43b3c3e69acc5dc76427281b24d6` |
| `directional-factories` `files/objects3d/armalabw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armalabw.3do` | `77a4613dfc3306dbc2dbebe819a838e7440368f0055e88748f841a7e325d5fb7` |
| `directional-factories` `files/objects3d/armalabw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armalabw_dead.3do` | `c5b9063e6f467ab30491bf4c758ab4979c3a2e9a8cc3205f64c6538fee4b8f5a` |
| `directional-factories` `files/objects3d/armasye.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armasye.3do` | `7859a63111ce23c1c24ef8129bc440b78bfbdb2cb793f7f7b7b23efee23f2cb7` |
| `directional-factories` `files/objects3d/armasye_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armasye_dead.3do` | `b941de17452916d1b10d4cca4ac13f5f172a9c631be1667f14ad04844a2ef0ac` |
| `directional-factories` `files/objects3d/armasyn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armasyn.3do` | `6ad253dc8efb6a4009a5aa6f5a34533126bf69dc051ebcf6841b074256551d69` |
| `directional-factories` `files/objects3d/armasyn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armasyn_dead.3do` | `184c9ee65915757fd98f8f62303f86fde91a4af3ce7472a20873f63fb83d67d1` |
| `directional-factories` `files/objects3d/armasyw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armasyw.3do` | `c9b168f2d62c4542cb0a41ad3904a50043408fed7040dafb7626d0d90ac80dba` |
| `directional-factories` `files/objects3d/armasyw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armasyw_dead.3do` | `e405a3808b1fedcac5824b35d1bcd520f8066748cf2252abfdea4345a3fd5f60` |
| `directional-factories` `files/objects3d/armavpe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armavpe.3do` | `5e9b84da6ce3934c983c7050ed792c72dac9dee3cf42115225d9e94be7bcd3fd` |
| `directional-factories` `files/objects3d/armavpe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armavpe_dead.3do` | `6972c343b88b83c6b280345f1cd233d6eb0ae872146b8824a99dceab716aa5c7` |
| `directional-factories` `files/objects3d/armavpw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armavpw.3do` | `7d9bce8cf224d9abbb3c1582fea078aed5e85797a73ccfeb9944155df352152b` |
| `directional-factories` `files/objects3d/armavpw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armavpw_dead.3do` | `e0808f8c39beeafc69214c493e1d943c53094c630cb39c9d0400b27ff6458f56` |
| `directional-factories` `files/objects3d/Armhpe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/Armhpe.3do` | `3c217072d8159021a73f3f76a90b63ec2d2917535b5b19be9a9c2c9494720659` |
| `directional-factories` `files/objects3d/armhpe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armhpe_dead.3do` | `367af61ecbe3e561723d060a9f750f94ca188b5a6c791b7f0dfed6ec241537bb` |
| `directional-factories` `files/objects3d/Armhpw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/Armhpw.3do` | `2546689ae0a8dca5baf8ff67e292a0625a67b6f1de4725a63a1672be8e048613` |
| `directional-factories` `files/objects3d/armhpw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armhpw_dead.3do` | `67d70f84da084a93d16cd4690ea8c340b14857578095097ca2b0ac9c8eac6fc6` |
| `directional-factories` `files/objects3d/armlabe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armlabe.3do` | `419f506e25b2f377b2a97bfe509bdeace4b0c343cc0783dc79337f5c97b6cae3` |
| `directional-factories` `files/objects3d/armlabe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armlabe_dead.3do` | `4cb44a57e4299e1c0d917d43ba4655d083c076fbdec39081564d63b44b36f46f` |
| `directional-factories` `files/objects3d/armlabw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armlabw.3do` | `2d4df476a730bd84ba2f39ab4b794d4953ac8e3292ec35b2451c9a739c087b5d` |
| `directional-factories` `files/objects3d/armlabw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armlabw_dead.3do` | `748b7b233702e04b8ef0170cca84b1ebd339129f3d2f2a1c87f3b1ac64ad6bf2` |
| `directional-factories` `files/objects3d/armsye.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armsye.3do` | `9c57f12bede3a5a2db3ad328fa5e8e7116863551996d46c29982d0fdba34c461` |
| `directional-factories` `files/objects3d/armsye_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armsye_dead.3do` | `9517b3f7fbd93a1460cfaa68d10ea9b7fde7fd18d95a17eac56773fcee041ea1` |
| `directional-factories` `files/objects3d/armsyn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armsyn.3do` | `bfc2a7614bdb3a42f0e32f28b7f6984132489b97f66785a9b76a59e0e2d3bec7` |
| `directional-factories` `files/objects3d/armsyn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armsyn_dead.3do` | `60e4854427ddebeccb011a0fe7f6dad6cfccda365a3bf4b49787667112e18495` |
| `directional-factories` `files/objects3d/armsyw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armsyw.3do` | `f08fa07f1468d83c9f0d4463b1d5aa1327f3cb6dee6ff810972c6c0190fff42f` |
| `directional-factories` `files/objects3d/armsyw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armsyw_dead.3do` | `41e3ee2b6eb95c61fd92054f3f50b9289c5e48cd0d9c947f1f28491d1247c5f3` |
| `directional-factories` `files/objects3d/armvpe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armvpe.3do` | `033285a052595b3cbd25214aaa90a8604eff0617c14f3acad849c4661d902765` |
| `directional-factories` `files/objects3d/armvpe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armvpe_dead.3do` | `f74716f7709ebf69669e58e7697482011c4d879d1060da791e821cbd795582de` |
| `directional-factories` `files/objects3d/armvpn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armvpn.3do` | `da2e59efb294593fd58ca93e28c7f7c63b22a335a5c0f8433cd1a1e02f82af67` |
| `directional-factories` `files/objects3d/armvpn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armvpn_dead.3do` | `dbddaeab0ca80fa9221641b10f2ac8029fe09eaf2b27ac3f62cd2895151ee9a2` |
| `directional-factories` `files/objects3d/armvpw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armvpw.3do` | `3a3fea644a02cd9e76936590857993fef1ee6a66bb6a9b47cdc52fe8772ce516` |
| `directional-factories` `files/objects3d/armvpw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/armvpw_dead.3do` | `c3865983457734affcb5d83e7578821fc3962160b7abc9988323d9a6680fbfb1` |
| `directional-factories` `files/objects3d/coralabe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coralabe.3do` | `818a62e0503292baed6fdc535de2228f76d37e7b7166bc9400c6339d41bfa1d9` |
| `directional-factories` `files/objects3d/coralabe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coralabe_dead.3do` | `5daa0dc16ded59e1786f0166a37dc116797745a42a659d38ff1623e8433b669d` |
| `directional-factories` `files/objects3d/coralabn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coralabn.3do` | `8404414b16e73c521ea7efe37ed79c6ae2984d5361e0f95f4c3ff98fe30e9779` |
| `directional-factories` `files/objects3d/coralabn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coralabn_dead.3do` | `5f31760a9b4e2f334621a6d8c1fb726c62bc5d1463a3a7e2288fff9f02cc5b90` |
| `directional-factories` `files/objects3d/coralabw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coralabw.3do` | `516d7bc4cfe87dbe17f3dfb0dbb8932e2389d08abf8ac369a3d9585a2c41afc8` |
| `directional-factories` `files/objects3d/coralabw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coralabw_dead.3do` | `cf95dbb3f00cf609e48d56bf8bcb8102164c9578bd9276bf16f966236dd3cca9` |
| `directional-factories` `files/objects3d/corasye.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corasye.3do` | `bfcc27fe5780244e949565c5a763f0861801daeae511ffe247e95a869b9f8a45` |
| `directional-factories` `files/objects3d/corasye_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corasye_dead.3do` | `bd3b15884ba44e666303b3f1addcaeb296dfd7a2f5c9222179e9af0d4f8a7830` |
| `directional-factories` `files/objects3d/corasyn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corasyn.3do` | `07044d5e633e70e310113cc56edf541d97e4f4287e80cf84faecc48790712a7f` |
| `directional-factories` `files/objects3d/corasyn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corasyn_dead.3do` | `372c3dfec2a7eb3a8a4e45099eb34b4efab7cd53e54b788713c2e5992be20915` |
| `directional-factories` `files/objects3d/corasyw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corasyw.3do` | `fde4aa01e7faa528dca4835443b0b2dc164905af2780bd9e367a35ccc8eb6669` |
| `directional-factories` `files/objects3d/corasyw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corasyw_dead.3do` | `b6751f774d947c1aed6cfd43854d71ba079fa4d8cb68e52b8accf4a313e2fb0f` |
| `directional-factories` `files/objects3d/coravpe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coravpe.3do` | `369f69ee4fe50878cae533bf06ac0a48a46c4c45c57e252c1a807347443b70e3` |
| `directional-factories` `files/objects3d/coravpe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coravpe_dead.3do` | `398b64d454e968ccb363ecf8d7498eff516e1f75e8c6967b554a3c08808dbb4b` |
| `directional-factories` `files/objects3d/coravpn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coravpn.3do` | `4da992a678ba4771ff49f0a187fa1b1b83502fdfa735d7fc3f26007d83544137` |
| `directional-factories` `files/objects3d/coravpn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coravpn_dead.3do` | `eca416d79d501f65ff3199cff6e95cae7b6e932517617228d04dcf03227e5b85` |
| `directional-factories` `files/objects3d/coravpw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coravpw.3do` | `c408f27594b5067c32bd440555440bf28ffd1f8c640850e84c809c65a79eff90` |
| `directional-factories` `files/objects3d/coravpw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/coravpw_dead.3do` | `0bd671b0dcf14c4182552023e926afe1f1f295ba6211cac9f73e927aa0528989` |
| `directional-factories` `files/objects3d/corhpe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corhpe.3do` | `da086145258d6f98c28377deea41667704f8e6d3b38d4054651896d433fe5a09` |
| `directional-factories` `files/objects3d/corhpe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corhpe_dead.3do` | `f16b94c02c6ccc6628228700e839b71eb1c6ee00de53a36edea04dd20f4b8c19` |
| `directional-factories` `files/objects3d/corhpw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corhpw.3do` | `8e6ef652211f289a4f280f04bf8bcad14a7e17586212fdeddb40be7492528fea` |
| `directional-factories` `files/objects3d/corhpw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corhpw_dead.3do` | `e6ef8282a453f9ad5b3acb80adb9424e6d9a63492801d59b1d8ec8493426d1f2` |
| `directional-factories` `files/objects3d/corlabe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corlabe.3do` | `d7bc9e5119a0080d14af4174ec890be56b07899d5b5c689884b0458f87e3a78e` |
| `directional-factories` `files/objects3d/corlabe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corlabe_dead.3do` | `bd57c6e68056cfb4f5662956bc6bf94272a1604bf01f1d3feca0abb0a7d27791` |
| `directional-factories` `files/objects3d/corlabw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corlabw.3do` | `42637fa2df9ab3c4efafc6362581c1ec0cf5d7895d77c57d236f67c3dd456666` |
| `directional-factories` `files/objects3d/corlabw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corlabw_dead.3do` | `6f3ca124705e309948db0119215fca4b1fe780bf42dbd54be93d84039e095626` |
| `directional-factories` `files/objects3d/corsye.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corsye.3do` | `f7bb435f661b272bbefed61cb790b8d18c858d47cbcefab85a68293c62569aa0` |
| `directional-factories` `files/objects3d/corsye_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corsye_dead.3do` | `9bdb23c32cb1ee4d4628b9129f74db8128a9e8574ea29f7c16b052e5a4118a68` |
| `directional-factories` `files/objects3d/corsyn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corsyn.3do` | `c569e1842637a350376c428c7b84851f62cce476348d3fdc65182d81f2b6e687` |
| `directional-factories` `files/objects3d/corsyn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corsyn_dead.3do` | `9f3812aee80e923b431c3e011b87a96aea0e1cd077348069a0e4424f5e332ddc` |
| `directional-factories` `files/objects3d/corsyw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corsyw.3do` | `3a7c489f0a1088e449bea5920b1dee70963058dc4a6e56eac385292b80b4d117` |
| `directional-factories` `files/objects3d/corsyw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corsyw_dead.3do` | `dfc5fbea6314c385afb9fb51d94abf900717594c0141843e0c1edded2545108d` |
| `directional-factories` `files/objects3d/corvpe.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corvpe.3do` | `639c15e3ebacae0e1ed0dc25bdb84053a04c66078cdf7dbb051d946fffa9c8c0` |
| `directional-factories` `files/objects3d/corvpe_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corvpe_dead.3do` | `3da87c231f4889ad515799d9e45aee0b5a2c594be08952524a5916dd9335f20c` |
| `directional-factories` `files/objects3d/corvpn.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corvpn.3do` | `920233bdcfe6bb5bcbe1bbaf19c891594288bb0e9810ea5a4711628dd432fc33` |
| `directional-factories` `files/objects3d/corvpn_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corvpn_dead.3do` | `5f446ceea8db0f9ccec5c3ea7333fb144289d52a92d39dad9d045fefb4948488` |
| `directional-factories` `files/objects3d/corvpw.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corvpw.3do` | `384c3364f8bd45f2724ba590f81fc8e0b955c81b5fe88a47d3c35663e18a679c` |
| `directional-factories` `files/objects3d/corvpw_dead.3do` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `objects3d/corvpw_dead.3do` | `864980411e8cfcc348d1f2880651302ce8aaac358e78f434608f6116959e5f7b` |
| `directional-factories` `files/scripts/Armalabe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armalabe.COB` | `8e11aca98ade81e10c91b01c55c97e7304b4580d8f6626233b0ea272d7bff380` |
| `directional-factories` `files/scripts/Armalabw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armalabw.COB` | `0f5ed5bd749d88ff5ba3cfebec443bb9d501ce3f12b82c017df314d007f541b6` |
| `directional-factories` `files/scripts/Armasye.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armasye.COB` | `0cd6b936e098931f08157a259a6d3d89537d24993396d2682ee9f42915e08bf2` |
| `directional-factories` `files/scripts/Armasyn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armasyn.COB` | `cee8e77a315992042072fe8a261764c6eaed87d7483c79ce23dbda8a90a60ca6` |
| `directional-factories` `files/scripts/Armasyw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armasyw.COB` | `4acfd0f6a477e438fe338429ac817c8413b71b51580d3b3c847a1ab4d4b76a8d` |
| `directional-factories` `files/scripts/Armavpe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armavpe.COB` | `f598635f162f53a8968459fd1a1770f4b7695e3117891385e1710e3ec519c5c8` |
| `directional-factories` `files/scripts/Armavpw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armavpw.COB` | `910ec3329d3c16189fcb0249e4cbb7b6e1d5823678c9bb5dad17fea27ea091dc` |
| `directional-factories` `files/scripts/Armhpe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armhpe.COB` | `f75f7cd9a13bda27b1ab2c20d78fc81a7ac37010b41887ccdfd4ed67908a9de5` |
| `directional-factories` `files/scripts/Armhpw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armhpw.COB` | `3d8001cfc3bf4969581e0b6d011d98cf19e215639e0b38f7913447a007967676` |
| `directional-factories` `files/scripts/Armlabe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armlabe.COB` | `9c98ad633088cf6a5671f15b627e3618d4afda8090ee49adcbd507224a51b421` |
| `directional-factories` `files/scripts/Armlabw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armlabw.COB` | `4efc41261ef0f0f5c8a3e2758d89b44474d5183ad78131a342c6425e193a9972` |
| `directional-factories` `files/scripts/Armsye.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armsye.COB` | `67eb03e5a552594f533f154761cf8e9555335b25b2901f33068fea0cf3cd8c58` |
| `directional-factories` `files/scripts/Armsyn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armsyn.COB` | `d6ecb4c7c17ca35b797a81dff3e0f95fdd3ebdaab3efef5bc43d00f9644a6cd8` |
| `directional-factories` `files/scripts/Armsyw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armsyw.COB` | `548a5d4788aa48e96876c352a3c37c5013ae5aed5911aac8459a0bab6d9d83da` |
| `directional-factories` `files/scripts/Armvpe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armvpe.COB` | `949ef5e3c60f4e9e5959214d5101ae5f26e34bdca1fbf1fea3238deea28a5e96` |
| `directional-factories` `files/scripts/Armvpn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armvpn.COB` | `151fad1035fb5018a2de965ad3ad75e9b95b29163d518621560ae645079c4b7b` |
| `directional-factories` `files/scripts/Armvpw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Armvpw.COB` | `6390b06f8e2a16d1618b812e7926ae3443c2fd4dcd6fa27711966003e4492c4c` |
| `directional-factories` `files/scripts/Coralabe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Coralabe.COB` | `b90485f2585d80ab9e2cfad17ac2e381ca9fe231fd057571e9a7e6e45612e408` |
| `directional-factories` `files/scripts/Coralabn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Coralabn.COB` | `c5572d958d75c7bd5f8e8d3dde0c794005a795207f45059b3cc2d9b709f593f8` |
| `directional-factories` `files/scripts/Coralabw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Coralabw.COB` | `fe28592bdf572bd5e3eb10fab935b79377ef0932e22148aabf542361a2cd042f` |
| `directional-factories` `files/scripts/Corasye.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corasye.COB` | `ec7e16d52894ba480123a7b2f53fd241c60f41cd2ec9fa9a8ca0da4c0761540c` |
| `directional-factories` `files/scripts/Corasyn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corasyn.COB` | `589cab2412f07e5407d2847b57ead055b2e7ea9d21b1db5aa68babedf19fa34a` |
| `directional-factories` `files/scripts/Corasyw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corasyw.COB` | `5cab811752994b94c9aadf84967a7d78d4610504e3203433969f264bcb1955b9` |
| `directional-factories` `files/scripts/Coravpe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Coravpe.COB` | `7103a3613a729a6cce42e841a428f307525cc31119eb98c79f728e1d4aa5f14b` |
| `directional-factories` `files/scripts/Coravpn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Coravpn.COB` | `b75b86333daa3e6b46907437a05fccdec45d2a4a0fafad8d0535f2db3d7b6d9a` |
| `directional-factories` `files/scripts/Coravpw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Coravpw.COB` | `51506e12f5ba9c01d5bb41afa7997a2c4ff3ec3f7622c5820f1315ef5ff24e14` |
| `directional-factories` `files/scripts/Corhpe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corhpe.COB` | `62e7b31f3f38427db79272ec89741dfbb125ec94b4e5e1bf6855575542e1634e` |
| `directional-factories` `files/scripts/Corhpw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corhpw.COB` | `1c5bb2b3fa724a853c28281739080140bab3c31ae4cfd3e892f31bb2a4a45f6c` |
| `directional-factories` `files/scripts/Corlabe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corlabe.COB` | `990e707a0b64321f1ceb9e16bccedba7e4a89cf393613d3291c00d88f1a69a2a` |
| `directional-factories` `files/scripts/Corlabw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corlabw.COB` | `055dbf1627e5a47e164411f0e8e83b9d35c2dfaddfb0e3bb93ce78cbded700f9` |
| `directional-factories` `files/scripts/Corsye.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corsye.COB` | `cdcf6dde0fefdd982bd8bc9568385a01c835f20b7c34112dbeac17ce76f89324` |
| `directional-factories` `files/scripts/Corsyn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corsyn.COB` | `4da97d3c9d752af5ee743c13a3426298d2b0f8478f2e12162a169b5715248ac0` |
| `directional-factories` `files/scripts/Corsyw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corsyw.COB` | `76b19b90016c2a86eedfb811fd51f8140b80c29273e916cf8822041a60caf7bf` |
| `directional-factories` `files/scripts/Corvpe.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corvpe.COB` | `c3a051e5aaaafca1e8d3f8fad9273acc2293cccc04cd71bfe6f414d6fb0baba3` |
| `directional-factories` `files/scripts/Corvpn.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corvpn.COB` | `bbf76e1d95789cb2550bd78e303f9cc82bf8c12e934da21b94d541a396dfc3f8` |
| `directional-factories` `files/scripts/Corvpw.COB` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `scripts/Corvpw.COB` | `720b6de229fc69121565f7fcbc569a07ce1a3fd9fdee51a452c9ec647a5e1583` |
| `directional-factories` `files/unitpics/ARMALABE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMALABE.PCX` | `1200da75325833ee724beda448424a28137aed1533254e765c8638f821b0f1cc` |
| `directional-factories` `files/unitpics/ARMALABW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMALABW.PCX` | `1200da75325833ee724beda448424a28137aed1533254e765c8638f821b0f1cc` |
| `directional-factories` `files/unitpics/ARMASYE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMASYE.PCX` | `44aa2b12046ef3fb3e86ed20f1aa97cbd257778a763729135efb54bb570e8fd5` |
| `directional-factories` `files/unitpics/ARMASYN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMASYN.PCX` | `44aa2b12046ef3fb3e86ed20f1aa97cbd257778a763729135efb54bb570e8fd5` |
| `directional-factories` `files/unitpics/ARMASYW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMASYW.PCX` | `44aa2b12046ef3fb3e86ed20f1aa97cbd257778a763729135efb54bb570e8fd5` |
| `directional-factories` `files/unitpics/ARMAVPE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMAVPE.PCX` | `96171bb551ec27a53f92a73ce4528567f7fd5c8984911946cd52c48b33a248de` |
| `directional-factories` `files/unitpics/ARMAVPW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMAVPW.PCX` | `96171bb551ec27a53f92a73ce4528567f7fd5c8984911946cd52c48b33a248de` |
| `directional-factories` `files/unitpics/ARMHPE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMHPE.PCX` | `fdcb1a956bfbb5c35982e6dbe778c26eb97fa8f2ad3e1a979093d4299c264e9b` |
| `directional-factories` `files/unitpics/ARMHPW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMHPW.PCX` | `fdcb1a956bfbb5c35982e6dbe778c26eb97fa8f2ad3e1a979093d4299c264e9b` |
| `directional-factories` `files/unitpics/ARMLABE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMLABE.PCX` | `c6c66807af8720ef3ba253b3b448e3cd76691c3664f6e81b611f6633668e69a7` |
| `directional-factories` `files/unitpics/ARMLABW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMLABW.PCX` | `c6c66807af8720ef3ba253b3b448e3cd76691c3664f6e81b611f6633668e69a7` |
| `directional-factories` `files/unitpics/ARMSYE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMSYE.PCX` | `244131aa8112b614f7c4fc6bf498858649c4992dc19b4a9e2594f23aad7b13cd` |
| `directional-factories` `files/unitpics/ARMSYN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMSYN.PCX` | `244131aa8112b614f7c4fc6bf498858649c4992dc19b4a9e2594f23aad7b13cd` |
| `directional-factories` `files/unitpics/ARMSYW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMSYW.PCX` | `244131aa8112b614f7c4fc6bf498858649c4992dc19b4a9e2594f23aad7b13cd` |
| `directional-factories` `files/unitpics/ARMVPE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMVPE.PCX` | `6a9b60a57c9536d72be24b51f617256612d46cccf78a8f72559c74b0f4a98cc3` |
| `directional-factories` `files/unitpics/ARMVPN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMVPN.PCX` | `6a9b60a57c9536d72be24b51f617256612d46cccf78a8f72559c74b0f4a98cc3` |
| `directional-factories` `files/unitpics/ARMVPW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/ARMVPW.PCX` | `6a9b60a57c9536d72be24b51f617256612d46cccf78a8f72559c74b0f4a98cc3` |
| `directional-factories` `files/unitpics/CORALABE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORALABE.PCX` | `a6db9ba310f1f5374a25683c2cd5a73d22e45e4cf24c3a0350981a0e214c36ca` |
| `directional-factories` `files/unitpics/CORALABN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORALABN.PCX` | `a6db9ba310f1f5374a25683c2cd5a73d22e45e4cf24c3a0350981a0e214c36ca` |
| `directional-factories` `files/unitpics/CORALABW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORALABW.PCX` | `a6db9ba310f1f5374a25683c2cd5a73d22e45e4cf24c3a0350981a0e214c36ca` |
| `directional-factories` `files/unitpics/CORASYE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORASYE.PCX` | `d2d4293067cfd3774326acf975b33e58c606c7cc3f0a675fee62f819312ee89d` |
| `directional-factories` `files/unitpics/CORASYN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORASYN.PCX` | `d2d4293067cfd3774326acf975b33e58c606c7cc3f0a675fee62f819312ee89d` |
| `directional-factories` `files/unitpics/CORASYW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORASYW.PCX` | `d2d4293067cfd3774326acf975b33e58c606c7cc3f0a675fee62f819312ee89d` |
| `directional-factories` `files/unitpics/CORAVPE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORAVPE.PCX` | `954a8419c1691835823b942ad26bc0db27fbcdf266950a14d4e0f73368dd55c2` |
| `directional-factories` `files/unitpics/CORAVPN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORAVPN.PCX` | `954a8419c1691835823b942ad26bc0db27fbcdf266950a14d4e0f73368dd55c2` |
| `directional-factories` `files/unitpics/CORAVPW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORAVPW.PCX` | `954a8419c1691835823b942ad26bc0db27fbcdf266950a14d4e0f73368dd55c2` |
| `directional-factories` `files/unitpics/CORHPE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORHPE.PCX` | `e046869c5fb93e579f1e38a6b3a00204c63d83b5baec35946e5b928988516c11` |
| `directional-factories` `files/unitpics/CORHPW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORHPW.PCX` | `e046869c5fb93e579f1e38a6b3a00204c63d83b5baec35946e5b928988516c11` |
| `directional-factories` `files/unitpics/CORLABE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORLABE.PCX` | `9d3547061b8b71166cf62f6eac52c9c0e8b7912e5b8d32b768f303ab7d7e06b8` |
| `directional-factories` `files/unitpics/CORLABW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORLABW.PCX` | `9d3547061b8b71166cf62f6eac52c9c0e8b7912e5b8d32b768f303ab7d7e06b8` |
| `directional-factories` `files/unitpics/CORSYE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORSYE.PCX` | `a0009d1a9b1b14ba43b8be6b8d8c543fb74e36ac482773baee7707993bf7adcf` |
| `directional-factories` `files/unitpics/CORSYN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORSYN.PCX` | `a0009d1a9b1b14ba43b8be6b8d8c543fb74e36ac482773baee7707993bf7adcf` |
| `directional-factories` `files/unitpics/CORSYW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORSYW.PCX` | `a0009d1a9b1b14ba43b8be6b8d8c543fb74e36ac482773baee7707993bf7adcf` |
| `directional-factories` `files/unitpics/CORVPE.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORVPE.PCX` | `51701c25986bd73d2561c8f4827e0c4c20254e05e7276dea262408623afb657f` |
| `directional-factories` `files/unitpics/CORVPN.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORVPN.PCX` | `51701c25986bd73d2561c8f4827e0c4c20254e05e7276dea262408623afb657f` |
| `directional-factories` `files/unitpics/CORVPW.PCX` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `unitpics/CORVPW.PCX` | `51701c25986bd73d2561c8f4827e0c4c20254e05e7276dea262408623afb657f` |
| `directional-factories` `files/units/ARMALABE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMALABE.FBI` | `3947cecff583225398813957e1d862ee2c79c02d1d4709a786f80a881fbe1f7c` |
| `directional-factories` `files/units/ARMALABW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMALABW.FBI` | `e1dd56d37f75850ff8b4e1437b5fd113413bc6b56d7d1ca7e7281aab6e14e6c7` |
| `directional-factories` `files/units/ARMASYE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMASYE.FBI` | `cf3bdd2bb842e23275af12fcd775ea8ce89f9e1a4ec5e624f48b5c3766b0306d` |
| `directional-factories` `files/units/ARMASYN.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMASYN.FBI` | `aefb97084882fa7106a2893fc29493e93631e8a5714e62987efb5e2716689002` |
| `directional-factories` `files/units/ARMASYW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMASYW.FBI` | `8eaddffa03cef8a8f7822bf4ee89e65a7c34e1926e318020c52f1a80dac5d76d` |
| `directional-factories` `files/units/ARMAVPE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMAVPE.FBI` | `c7f3b115f966a5f8d07dffc81b77242dd36353610f7e09d8a9ca8bdb8e8ec5b3` |
| `directional-factories` `files/units/ARMAVPW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMAVPW.FBI` | `ed88bd036c718d8bbcb5da3e8024034ee95830e6ce20db4782d1f1409552150a` |
| `directional-factories` `files/units/ARMHPE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMHPE.FBI` | `436cdf422ea04a2fec2fbae50ff11f61493196e618059b6b130329897eb4a465` |
| `directional-factories` `files/units/ARMHPW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMHPW.FBI` | `a5635d67a099be328286fde4a6e26f81eeaa279e61d1a89070078ac6c890cafa` |
| `directional-factories` `files/units/ARMLABE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMLABE.FBI` | `ebd3a8186bdd535e544ad7be787ea48651ba8521b18a437b45410f200e6148f3` |
| `directional-factories` `files/units/ARMLABW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMLABW.FBI` | `d403f1cce4ce5f05f0c9748304d0e3c55cb162f322fac854054b2a00bb4a00fb` |
| `directional-factories` `files/units/ARMSYE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMSYE.FBI` | `55800689a40f1dcc80eb56f67ee2f347aa83607211f835c54cb3825dbbe72552` |
| `directional-factories` `files/units/ARMSYN.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMSYN.FBI` | `66f6b02e94da73521ede60c5c955f6f63e72bf84ec5419b4e79d224f2b624b5c` |
| `directional-factories` `files/units/ARMSYW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/ARMSYW.FBI` | `b66d1421ea8c18a3ef71f40f2b014648709f0df7b374efec4f13a79c674850a6` |
| `directional-factories` `files/units/Armvpe.fbi` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/Armvpe.fbi` | `e37c27fa2d1b3b510955028e3692dbc10c03ed36223a41592c95815ba94c08ec` |
| `directional-factories` `files/units/Armvpn.fbi` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/Armvpn.fbi` | `52267e8d1011e7662afacd18e762d51fedb15587cf6fa4257540280ca700a1a1` |
| `directional-factories` `files/units/Armvpw.fbi` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/Armvpw.fbi` | `fe400e4c9706790bf5e92ac48b2d22e60d8656e83dd45f4161a73d02caa60f54` |
| `directional-factories` `files/units/CORALABE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORALABE.FBI` | `90039c579c4c569a06643557f0caeaf5d30a4f9ca65ccf48e427db5fec125e15` |
| `directional-factories` `files/units/CORALABN.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORALABN.FBI` | `207d12dd30d946772a5add2189e36d3ab2eb7f2ee989d2a38380425c9f5bb250` |
| `directional-factories` `files/units/CORALABW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORALABW.FBI` | `f2812dbe19a8d7a9427c5b81fd94b96bc010df624622205215b96aa5d0857da8` |
| `directional-factories` `files/units/CORASYE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORASYE.FBI` | `46d51864fd66ced5915afb5b036b7df42e939314b5e0a419468a4e6657acf7f4` |
| `directional-factories` `files/units/CORASYN.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORASYN.FBI` | `f67c0ff792fc672c5d9a06b086982896add8667c190142dfdaf645d3a5bcb373` |
| `directional-factories` `files/units/CORASYW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORASYW.FBI` | `ddef83549e192b7fe9798659062eafe8d77d94662302e4d28243c64b5b336684` |
| `directional-factories` `files/units/CORAVPE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORAVPE.FBI` | `3f84b133cdb9f697aad42bb481e824bcfdcd8a0a3c4bedb50e8b37e4f6d49c96` |
| `directional-factories` `files/units/CORAVPN.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORAVPN.FBI` | `dbee4ccf3ff1c91639e9583537d842c39289318d61f16196f85437f12ffa1dd0` |
| `directional-factories` `files/units/CORAVPW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORAVPW.FBI` | `e8203cffae63094d95baf39a7a08ccdf8eba65fb06839a403313ff18ad700e1f` |
| `directional-factories` `files/units/CORHPE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORHPE.FBI` | `27725bd9ca33a3ceca43e6b651d138034bbb5853548e9341a2e7b344f1ca3286` |
| `directional-factories` `files/units/CORHPW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORHPW.FBI` | `0fecc40bf9fdceb5241b5af3b39d7c7001e56dc97de84e72510de4ac82fadd73` |
| `directional-factories` `files/units/CORLABE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORLABE.FBI` | `0de2402a7de756c164407b684bb56b3975c4e2dfd017bdb6957fe523008ccd23` |
| `directional-factories` `files/units/CORLABW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORLABW.FBI` | `e2078cff34235acc82c50c246b79c2372a6654db7291e9eddb24b556bd0ac840` |
| `directional-factories` `files/units/CORSYE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORSYE.FBI` | `c73bde229f04cb560e84d264e924efa2cc8a63fa5685598f9e081c36e8f1d8b8` |
| `directional-factories` `files/units/CORSYN.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORSYN.FBI` | `11603ff949b017b0430bd43911c5d1507d6b9f15dc60d7b2fcfd056c56a220ce` |
| `directional-factories` `files/units/CORSYW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORSYW.FBI` | `cc9334f56fa0bae63a0aff8fc513d7e9164baee847cf70bcbaf14e096e0ef500` |
| `directional-factories` `files/units/CORVPE.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORVPE.FBI` | `b9edf2302ff33b5020ac036f6ef3030f460c8d828450b6ccc8b02bfb849f9c18` |
| `directional-factories` `files/units/CORVPN.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORVPN.FBI` | `4b6e863c7fc23d25f85090d107444de8ee360e9b34bf4d776a8f9bd533cb1233` |
| `directional-factories` `files/units/CORVPW.FBI` | `igi-server/tam-directionalfactoriesv2/}{DirFact.ccx` | `units/CORVPW.FBI` | `2fef12b4bad8b68daeee8a219f7c799f981ed3a1f6f4bf34ed8634909d69fccd` |

## Differences from the originals

No package needed a fix. The comparisons of `finite-metal` and `finite-metal-cs` with their imports left nothing over, so those rows have no allowed file. A `remove()` and a blank `Copyright` compare as one drop. The hook removes `MetalMake` from the same units the originals' rules do (with Counter Strike units, not from a unit whose sound category is GATE), and the feature files are the originals' bytes. FLUXOR and QUARK are set to 5 metal only for the Counter Strike choice, by name, as that original does. Extractors, CORBHMTH and the converter found by that description are removed, which is what a blank `Copyright` did. Metal makers remain. Both originals told the player to add No Porc to remove them.

The removal is a hook, so it combines with `no-porc` under any rule. R02's text rule would have cancelled two removals of one field (Q17); since Q63 each mutator acts on the state the ones above it left, and both orders were checked on 3.1c.

`finite-metal-uh` is the same package over Uberhack 4.0. Its report drops CORBHMTH as well as the extractors that mod adds. The faithful import lists `works-with: ["ta-3.1c"]` (its `UH` code is not mapped to a mod), so `oa-tool mutator diff` refuses to apply that import on Uberhack and the versus comparison cannot be run. That row names no import: its recorded report is the check.

`directional-factories.allowed` is the only allowed file. The comparison kept 237 menu lines and nothing else. Each block is one reason:

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
