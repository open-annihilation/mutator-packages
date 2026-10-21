# MAC's unit tweaks

Fourteen packages replace sixteen of MAC's (macraig) single-unit tweaks and his two unit adders. The tweaks name the units they change, as the originals do, so a game without that unit is unchanged. The two adders ship the original's files in `files/`. Files lists each path, the archive and entry it came from, and its SHA-256. Absolute Annihilation 6.0 Tweaks is not converted. No comparison needs an allowed difference. The reports are in `_verify/`.

The import id is the id `oa-tool mutator import` makes from the title, with no `--works-with`. MAC's codes (`UTASP`, `TAUCP17`, `UT40b`, `AA60` and the rest) stay on each legacy record.

## Originals

| Original | Source | Import | Package | Option | Checked over |
|---|---|---|---|---|---|
| [MAC] Arm Advanced Solar Collector tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMADVSOL tweak.tam` | `mac-arm-advanced-solar-collector-tweak-for-utasp` | `advanced-solar-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Adv. G-N Const. Seaplane tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMANS tweak.tam` | `mac-arm-adv-g-n-const-seaplane-tweak-for-utasp` | `adv-seaplane-builder-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Heavy Vehicle Plant tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMHVP tweak.tam` | `mac-arm-heavy-vehicle-plant-tweak-for-utasp` | `heavy-vehicle-plant-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Perseus Advanced Gunship tweaks for UTASP 3 | `igi-server/MAC's mutators/{}MAC ARMPERS tweak.tam` | `mac-arm-perseus-advanced-gunship-tweaks-for-utasp-3` | `perseus-tweak` | — | `utasp-v5.0` |
| [MAC] Core Armed Metal Extractor tweak for UTASP | `igi-server/MAC's mutators/{}MAC MLEX tweak.tam` | `mac-core-armed-metal-extractor-tweak-for-utasp` | `armed-extractor-tweak` | — | `tauip-v2.1` |
| [MAC] Arm Resource Facility tweak for UTASP, TAUCP | `igi-server/MAC's mutators/{}MAC TAWF004 tweak.tam` | `mac-arm-resource-facility-tweak-for-utasp-taucp` | `resource-facility-tweak` | — | `utasp-v5.0` |
| [MAC] Arm Nano-Tower tweak for TAUCP | `igi-server/MAC's mutators/{}MAC ARMNTOW TAUCP tweak.tam` | `mac-arm-nano-tower-tweak-for-taucp` | `nano-tower-tweak` | for taucp | `utasp-v5.0` |
| [MAC] Arm Nano-Tower tweak for UTASP 4/5 | `igi-server/MAC's mutators/{}MAC ARMNTOW UTASP45 tweak.tam` | `mac-arm-nano-tower-tweak-for-utasp-4-5` | `nano-tower-tweak` | for utasp | `utasp-v5.0` |
| [MAC] Arm Quad Air Pad tweak | `igi-server/MAC's mutators/{}MAC Arm QuadAirPad tweak.tam` | `mac-arm-quad-air-pad-tweak` | `quad-air-pad-tweak` | — | `utasp-v5.0` |
| [MAC] Clairvoyance XLR (Arm) | `igi-server/MAC's mutators/{}MAC Clairvoyance XLR (Arm).tam` | `mac-clairvoyance-xlr-arm` | `clairvoyance-xlr` | side arm | `utasp-v5.0` and `taucp-v2.3` |
| [MAC] Clairvoyance XLR (Core) | `igi-server/MAC's mutators/{}MAC Clairvoyance XLR (Core).tam` | `mac-clairvoyance-xlr-core` | `clairvoyance-xlr` | side core | `utasp-v5.0` |
| [MAC] Clairvoyance XLR | `igi-server/MAC's mutators/{}MAC Clairvoyance XLR.tam` | `mac-clairvoyance-xlr` | `clairvoyance-xlr` | side all | `utasp-v5.0` |
| [MAC] Arm Eagle targeting tweak | `igi-server/MAC's mutators/{}MAC ARMAWAC tweak.tam` | `mac-arm-eagle-targeting-tweak` | `radar-plane-targeting` | plane eagle | 3.1c |
| [MAC] Arm Seahawk targeting tweak | `igi-server/MAC's mutators/{}MAC ARMSEHAK tweak.tam` | `mac-arm-seahawk-targeting-tweak` | `radar-plane-targeting` | plane seahawk | 3.1c |
| [MAC] Arm Lancet tweak for UTASP | `igi-server/MAC's mutators/{}MAC ARMLANCE tweak.tam` | `mac-arm-lancet-tweak-for-utasp` | `lancet-targets` | — | 3.1c |
| [MAC] Arm Peeper tweak | `igi-server/MAC's mutators/{}MAC ARMPEEP tweak.tam` | `mac-arm-peeper-tweak` | `peeper-tweak` | — | 3.1c |
| [MAC] Arm Nano-Tower tweak | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.tam` | `mac-arm-nano-tower-tweak` | `nano-tower` | — | 3.1c |
| [MAC] Arm Eyes tweak | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.tam` | `mac-arm-eyes-tweak` | `dragons-eye` | — | 3.1c |
| [MAC] Absolute Annihilation 6.0 Tweaks | `igi-server/MAC's mutators/}{MAC AA 6.0 Tweaks.tam` | `mac-absolute-annihilation-6-0-tweaks` | not converted | — | not checked |

`radar-plane-targeting` with plane both is the two plane imports together. `nano-tower-tweak` with for utasp is the default.

Why each row runs where it does:

- Eagle, Seahawk, Lancet and Peeper are units of 3.1c, so those rows run over 3.1c. Lancet was labelled for UTASP and the unit is in the base game as well.
- Nano Tower and Dragon's Eye add their units, so they run over 3.1c. Their download files name builders 3.1c lacks (HELPER, ARMFAB, ARMANS). Those records stay as the archives wrote them.
- UTASP 5.0 (`utasp-v5.0`) holds ARMADVSOL, ARMANS, ARMHVP, ARMPERS, TAWF004, ARMMTLAB, ARMNTOW, ARMTNTOW, ARMTFLAK, ARMTMRPC, ARMTROCK, QUADAIRPAD (unit name QuadAirPad), and ARMBEAC and CORBEAC as XLR radars. The solar, seaplane, plant, Perseus, resource facility, both nano-tower choices, the quad pad and the three Clairvoyance choices run there.
- The TAUCP nano-tower choice runs over UTASP 5.0, not TAUCP 2.3. TAUCP 2.3 has only Core's nano tower. UTASP 5.0 has both ARMNTOW and ARMMTLAB, the two units that choice names.
- The armed extractor runs over TAUIP 2.1 (`tauip-v2.1`), which holds MLEX. UTASP 5.0 does not.
- Clairvoyance with side arm also runs over TAUCP 2.3 (`taucp-v2.3`), which holds ARMEYE, TADD's XLR radar. UTASP 5.0's Arm radar is ARMBEAC, so the UTASP rows do not cover ARMEYE.

Clairvoyance keeps the originals' checks: the unit name is ArmBeac or ArmEye (Core: CorBeac or CorEye), the description mentions Radar, the sound is ARM_ADVRADAR or CORE_ADVRADAR, and the radar range is already between 4000 and 32000. On the packaged units those checks hold (the files write the names in capitals; the check ignores ASCII case).

## Not converted

Absolute Annihilation 6.0 Tweaks is not a package. It needs Absolute Annihilation 6.0, which is not packaged, so it is not checked. The import `mac-absolute-annihilation-6-0-tweaks` is kept. The archive is Absolute Annihilation 6.0's whole `weapons/weapons.tdf`, with `burnblow=0`, `unitsonly=1` and `noautorange=1` added to its Mercury (`ADVSAM`). Over 3.1c that file would replace 3.1c's own `weapons.tdf`.

## Needs <mod>; not checked

- TADD's CorEye. No packaged mod holds it. Clairvoyance's Core block still checks CorEye, and nothing here runs that block against TADD.
- TAUCP 1.7 and 1.8's own towers. Those are the TAUCP nano-tower tweak's own targets, and neither version is packaged. The same two unit names are in UTASP 5.0, so that row runs there.
- UTASP 3.0's `SAM_weapon`. Perseus names that weapon. UTASP 5.0 has ARMPERS and not the weapon, so the rule is checked there and the weapon is not. `oa-tool mutator diff` does not start a match, so it does not see the game refuse the missing weapon.

## Files left out of the hard imports

P05's warnings, from `tools/build-packages`. F02 refuses a path outside the per-match allow-list. F04 allows `anims/<unit>_gadget.gaf` for a unit the archive adds, so those buttons are kept.

- `}{MAC ARMNTOW tweak.ccx`: left out `gui/ARMMTLAB1.GUI` (unknown-folder). The folder is misspelt. TA never read it either. The two button pictures, `anims/ARMMTLAB_gadget.GAF` and `anims/ARMNTOW_gadget.GAF`, are kept, and the curated package ships them.
- `}{MAC ARM_eyes tweak.ccx`: nothing left out. `anims/ARMEYES_gadget.GAF` is kept, and the curated package ships it.
- `}{MAC AA 6.0 Tweaks.ccx`: left out `tweaks.txt` (unknown-folder). It sits at the top of the archive and says which three keys were added to ADVSAM. `weapons/weapons.tdf` is kept in the import only.

Every other import warning is a compatibility code with no mod (`UTASP`, `UT30b`, `UT40b`, `UT50b`, `TAUCP17`, `TAUCP18`, `TAUCP23`, `AA60`), the note that tags default to gameplay, or, for the Seahawk, that an empty line before the compatibility line was skipped. OTA and TACC on the two plane tweaks map to the base game. None of those codes is passed as `--works-with`.

## Files

Each hash is the SHA-256 of the archive entry. The file under `files/` is those bytes. Paths keep the archive's names.

### nano-tower

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/anims/ARMMTLAB_gadget.GAF` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `anims/ARMMTLAB_gadget.GAF` | `37952b88827200c6a5c942a56d73b1adcdd14b30dedc72ee1d7f42b931922a7f` |
| `files/anims/ARMNTOW_gadget.GAF` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `anims/ARMNTOW_gadget.GAF` | `3d0e26d00bc8b9de1fc693fbd0b01958c42d1ed4e09a480f49d051664845a297` |
| `files/download/armmtlab.tdf` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `download/armmtlab.tdf` | `c841fdd6352a85954cbae8f765aca2b3c7261f0e9d8184b68ad850051806973e` |
| `files/download/armntow.tdf` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `download/armntow.tdf` | `39668fd3e75f84631fce9406fc31480b5558f43200ea55ff5659ef4b3f8df6e8` |
| `files/features/corpses/armmtlab_dead.tdf` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `features/corpses/armmtlab_dead.tdf` | `a07d0f7b9d3f92fa73a660b82db7b7be30faf174bc55e5b7b03ca269fe0ccfa3` |
| `files/features/corpses/armntow_dead.tdf` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `features/corpses/armntow_dead.tdf` | `60beee10440e48e6326e69c000d2fe59407fa7a94a864af134765b306f05bcd8` |
| `files/objects3d/armmtlab.3do` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `objects3d/armmtlab.3do` | `9aca5e40edd267f600e6412691d3a2d3788eeda3d73febb3d40032cd647a14ff` |
| `files/objects3d/armmtlab_dead.3do` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `objects3d/armmtlab_dead.3do` | `96722ea3e7b7562bba6f13f4bb325881becaf5ae5f626d69d9b92a365ca148f6` |
| `files/objects3d/armntow.3do` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `objects3d/armntow.3do` | `4c37c715ae2838dc855fe96685aa3356154e876ea9411c976ebbbe4914acacd5` |
| `files/objects3d/armntow_dead.3do` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `objects3d/armntow_dead.3do` | `b6cd9f37158aa8ccae90c22cea8bccb1fd533981893dc9bc22abc6738a7db21c` |
| `files/scripts/armmtlab.cob` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `scripts/armmtlab.cob` | `2cdfa0a8c4f9c77ed3d8ef844be1bd558e11457359abcb91ac99a54e83e8edb6` |
| `files/scripts/armntow.cob` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `scripts/armntow.cob` | `b82c78d382fc9e3087e4ab06a96a51955787bd1663459ee59129d0ac051397b3` |
| `files/unitpics/armmtlab.pcx` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `unitpics/armmtlab.pcx` | `60f685447d0ddffbfe77d44306a92fae3b6bbd00886324f60b75011da6fad278` |
| `files/unitpics/armntow.pcx` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `unitpics/armntow.pcx` | `e5a8b6461abe3a80b917e0e3e3ef2c87d61fa5a9dd8ff1f7e912a597161f55a2` |
| `files/units/armmtlab.fbi` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `units/armmtlab.fbi` | `28fcfd08832d79c1c01e8943513564a79ff653e5b1a283566e241a95359b6f1d` |
| `files/units/armntow.fbi` | `igi-server/MAC's mutators/}{MAC ARMNTOW tweak.ccx` | `units/armntow.fbi` | `59032f11c6860fd2e816b1c20cae57367f179e4e7f4b0a7e2259edb215502dcf` |

### dragons-eye

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/units/Armeyes.fbi` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `units/Armeyes.fbi` | `53e7746e29a9f07d7812779c8057b0ac4853a33b8fce25dc92fe7e86d2ae59aa` |
| `files/objects3d/Armeyes.3do` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `objects3d/Armeyes.3do` | `fde1ee37949e486a664493fceae9296ecef666d1d0fa142b5683dbe7235ccc0c` |
| `files/scripts/Armeyes.COB` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `scripts/Armeyes.COB` | `28f0715fada60a392a1eb5d3e27acf9360bb1690d53b339522662444e5a47bed` |
| `files/unitpics/Armeyes.pcx` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `unitpics/Armeyes.pcx` | `1900904298c74994c79d074a814ff264030ab6bb563e5520bdfe184ac7113205` |
| `files/features/corpses/Dragonseyes_dead.tdf` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `features/corpses/Dragonseyes_dead.tdf` | `4e6769f1285b49feebe6f3fc11e2d5ac91a520ed80c49e93294de2b0b9b7fee5` |
| `files/download/Armeyes.tdf` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `download/Armeyes.tdf` | `c092c4422e558bca181fa4b10685a0bed2d591d268c8adfde0a27bf8ac3470c3` |
| `files/download/Armeyes1.tdf` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `download/Armeyes1.tdf` | `d38c47f80635941e4a10be06e377eaefbfe3ff8e140c05c91366ec0f09b40cc0` |
| `files/anims/ARMEYES_gadget.GAF` | `igi-server/MAC's mutators/}{MAC ARM_eyes tweak.ccx` | `anims/ARMEYES_gadget.GAF` | `1712b716368e05b39c983debf1004bce9e5567c62d8415191e414c89523b823f` |

`nano-tower` and `nano-tower-tweak` conflict. One adds the pad and the tower, and the other changes those units when a pack already has them.

## Differences from the originals

There is no allowed file. Every row of `_verify/comparisons.tsv` keeps `allowed` as `-`. Each comparison of the curated package with its faithful import matched, over 3.1c or over the row's mod, so no package was changed.

The reports are what `oa-tool mutator diff` prints. A tweak changes only the fields its original names, on the units it names. A field the unit already holds does not appear: the Seahawk's `MaxWaterDepth` is already 255, and on UTASP 5.0 the advanced seaplane builder's `MaxWaterDepth` is already 255. Nano Tower adds ARMMTLAB and ARMNTOW, their files and their menu entries. Dragon's Eye adds ARMEYES. Clairvoyance over UTASP 5.0 changes ARMBEAC and CORBEAC. Over TAUCP 2.3 it changes ARMEYE.

The files layer writes `download/armmtlab-2.tdf` for the pad's ARMFAB entry, a builder 3.1c does not have. The import's own report has the same file, so the comparison does not count it.
