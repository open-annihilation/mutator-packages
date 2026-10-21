# MAC's unit mutators

Sixteen packages replace the thirty-five unit-rule mutators MAC (macraig) wrote from 2003 to 2008. Arm, Core and every-side copies of one mutator are a Side choice on one package. Agile Aircraft's two designs are a Version choice. Enhanced LOS's three sight settings are a Sight choice, and the package ships the LOS_1600 table with every one of them. Easy Self-Destruct's Arm transport change is a Transportable choice.

`originals/` and `build/` are gitignored. The commands below build the faithful imports and the curated packages under `build/mac-units/`. L23 compares each row and records the reports and the three allowed-difference files.

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
| [MAC] Clairvoyance generic | `igi-server/MAC's mutators/{}MAC Clairvoyance generic.tam` | `mac-clairvoyance-generic` | `clairvoyance` | `clairvoyance` |
| [MAC] Enhanced Builders (Arm) | `igi-server/MAC's mutators/{}MAC Enhanced Builders (Arm).tam` | `mac-enhanced-builders-arm` | `enhanced-builders`, side arm | `enhanced-builders-arm` |
| [MAC] Enhanced Builders (Core) | `igi-server/MAC's mutators/{}MAC Enhanced Builders (Core).tam` | `mac-enhanced-builders-core` | `enhanced-builders`, side core | `enhanced-builders-core` |
| [MAC] Enhanced Builders | `igi-server/MAC's mutators/{}MAC Enhanced Builders.tam` | `mac-enhanced-builders` | `enhanced-builders` | `enhanced-builders` |
| [MAC] Enhanced Factories (Arm) | `igi-server/MAC's mutators/{}MAC Enhanced Factories (Arm).tam` | `mac-enhanced-factories-arm` | `enhanced-factories`, side arm | `enhanced-factories-arm` |
| [MAC] Enhanced Factories (Core) | `igi-server/MAC's mutators/{}MAC Enhanced Factories (Core).tam` | `mac-enhanced-factories-core` | `enhanced-factories`, side core | `enhanced-factories-core` |
| [MAC] Enhanced Factories | `igi-server/MAC's mutators/{}MAC Enhanced Factories.tam` | `mac-enhanced-factories` | `enhanced-factories` | `enhanced-factories` |
| [MAC] Enhanced LOS (1000) | `igi-server/MAC's mutators/{}MAC Enhanced LOS (1000).tam` | `mac-enhanced-los-1000` | `enhanced-los`, sight 1000 | `enhanced-los-1000` |
| [MAC] Enhanced LOS (1600) | `igi-server/MAC's mutators/{}MAC Enhanced LOS (1600).tam` | `mac-enhanced-los-1600` | `enhanced-los`, sight 1600 | `enhanced-los-1600` |
| [MAC] Enhanced LOS (200%) | `igi-server/MAC's mutators/{}MAC Enhanced LOS (200%).tam` | `mac-enhanced-los-200` | `enhanced-los`, sight double | `enhanced-los-double` |
| [MAC] LOS_1600 | `igi-server/MAC's mutators/}{MAC LOS_1600.tam` | `mac-los-1600` | `enhanced-los` (its table) | `enhanced-los-double`, `enhanced-los-1000`, `enhanced-los-1600` |
| [MAC] Everybody Rides The Bus | `igi-server/MAC's mutators/{}MAC Everybody Rides The Bus.tam` | `mac-everybody-rides-the-bus` | `everybody-rides` | `everybody-rides` |
| [MAC] Extended Builders (Arm) | `igi-server/MAC's mutators/{}MAC Extended Builders (Arm).tam` | `mac-extended-builders-arm` | `extended-builders`, side arm | `extended-builders-arm` |
| [MAC] Extended Builders (Core) | `igi-server/MAC's mutators/{}MAC Extended Builders (Core).tam` | `mac-extended-builders-core` | `extended-builders`, side core | `extended-builders-core` |
| [MAC] Extended Builders | `igi-server/MAC's mutators/{}MAC Extended Builders.tam` | `mac-extended-builders` | `extended-builders` | `extended-builders` |
| [MAC] Incognito (Arm) | `igi-server/MAC's mutators/{}MAC Incognito (Arm).tam` | `mac-incognito-arm` | `incognito`, side arm | `incognito-arm` |
| [MAC] Incognito (Core) | `igi-server/MAC's mutators/{}MAC Incognito (Core).tam` | `mac-incognito-core` | `incognito`, side core | `incognito-core` |
| [MAC] Incognito (Arm) (every side) | `igi-server/MAC's mutators/{}MAC Incognito.tam` | `mac-incognito` | `incognito` | `incognito` |
| [MAC] Maneuverable Hovers | `igi-server/MAC's mutators/{}MAC Maneuverable Hovers.tam` | `mac-maneuverable-hovers` | `maneuverable-hovers` | `maneuverable-hovers` |
| [MAC] Real Hovers | `igi-server/MAC's mutators/{}MAC Real Hovers.tam` | `mac-real-hovers` | `real-hovers` | `real-hovers` |
| [MAC] Resources Easy Self-Destruct (Arm) | `igi-server/MAC's mutators/{}MAC Resources Easy Self-Destruct (Arm).tam` | `mac-resources-easy-self-destruct-arm` | `easy-self-destruct`, side arm, transportable yes | `easy-self-destruct-arm` |
| [MAC] Resources Easy Self-Destruct (Core) | `igi-server/MAC's mutators/{}MAC Resources Easy Self-Destruct (Core).tam` | `mac-resources-easy-self-destruct-core` | `easy-self-destruct`, side core | `easy-self-destruct-core` |
| [MAC] Slippery Slopes | `igi-server/MAC's mutators/{}MAC Slippery Slopes.tam` | `mac-slippery-slopes` | `slippery-slopes` | `slippery-slopes` |
| [MAC] Super Commander (Arm) | `igi-server/MAC's mutators/{}MAC Super Commander (Arm).tam` | `mac-super-commander-arm` | `super-commander`, side arm | `super-commander`, `super-commander-arm` |
| [MAC] Super Commander (Core) | `igi-server/MAC's mutators/{}MAC Super Commander (Core).tam` | `mac-super-commander-core` | `super-commander`, side core | `super-commander`, `super-commander-core` |
| [MAC] True VTOL Standby | `igi-server/MAC's mutators/{}MAC True VTOL Standby.tam` | `mac-true-vtol-standby` | `vtol-hover-standby` | `vtol-hover-standby` |
| [MAC] Useful Mines | `igi-server/MAC's mutators/{}MAC Useful Mines.tam` | `mac-useful-mines` | `useful-mines` | `useful-mines` |

The author of every original is MAC (macraig). Each `.tam` has its `.sm` beside it, except LOS_1600, which is a `}{` mutator with `}{MAC LOS_1600.ccx`.

## The sight table

`enhanced-los` ships one file taken from an original:

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/gamedata/los.tdf` | `igi-server/MAC's mutators/}{MAC LOS_1600.ccx` | `gamedata/LOS.TDF` | `d09485d65ed717a2cb65896999ff3444f7c724b24379c330a803c2723b91180d` |

The table's `NumTables` is 50, which allows a sight distance of 1600. LOS_1600 shipped that file as its own mutator and did not change any unit's sight. The file is added for every Sight value. Double LOS replaces the whole table too, so `enhanced-los` conflicts with `double-los`. Each recorded report lists 278 `sightdistance` lines and the same 2449 field lines on `gamedata/los.tdf` as the LOS_1600 import. The tool compares a parsed table by field, so the report has no `file replaced` line. A comparison of each Sight value against its Enhanced LOS import and LOS_1600 matches.

## Differences from the originals

`agile-aircraft.allowed` records Agile Aircraft II's dead group. The original's first group needs `WorkerTime=""`, which no aircraft meets, so it changed no aircraft that does not build. The curated version changes them. The file allows `left only field units/*.fbi [unitinfo] maxvelocity: *`, and the same for `brakerate`, `acceleration`, `turnrate` and `bankscale`. The construction-aircraft group is unchanged, including the exclusion of the unit named HELPER. Core's Agile Aircraft II omitted that name. Total Annihilation 3.1c has no HELPER, so a comparison still matches, and this version always leaves HELPER alone. On 3.1c the version II report changes every aircraft's top speed, 30 lines, and 24 of those aircraft do not build. The faithful import's own report changes 6, the construction aircraft.

`extended-builders.allowed` records two fixes. The original's selector lacks `Builder`, so it doubled the sight of every ground unit; the curated version doubles builders' only. That difference is `right only field units/*.fbi [unitinfo] sightdistance: *`. The original's leash field is misspelt, so it changed no leash; the curated version doubles `maneuverleashlength`. That difference is `left only field units/*.fbi [unitinfo] maneuverleashlength: *`. The build-distance change for those builders is the original's. On 3.1c the originals double the sight of 122 ground units.

`real-hovers.allowed` records the dead cruise-altitude test. Under the maintainer's rule a hovercraft without `CruiseAlt` reads 0, so the original selected nothing. The curated version selects hovercraft without `CruiseAlt`. The file allows one `left only field units/*.fbi [unitinfo]` pattern for each field the comparison shows: `canhover`, `movementclass`, `canfly`, `tedclass`, `cruisealt`, `altfromsealevel`, `bankscale`, `maxvelocity`, `brakerate`, `acceleration`, `turnrate` and `ovradjust`. The rule also sets `defaultmissiontype` to Standby. Those 13 hovercraft already use Standby, so the report has no line for that field and the allowed file does not name it. The report's `cruisealt` lines are the 13 hovercraft.

Enhanced Builders leaves commanders out with `commander` 1 instead of the names ARMCOM and CORCOM. On 3.1c that is the same set. The decoy commanders have no commander flag, so both versions include them. The comparison rows allow no differences.

Super Commander keeps each side's numbers. Arm multiplies top speed by 7 and braking and acceleration by 49. Core multiplies top speed by 5 and braking and acceleration by 25. Both texts promise 500% more speed. Side all applies each copy to its own side. A commander of another side is left alone, as the two originals leave it.

Resources Easy Self-Destruct keeps the Arm transport change on the Transportable option, which defaults to no. The Arm comparison sets Transportable to yes. The Core comparison leaves it at no, and the Core rules do not set the transport fields.

Maneuverable Hovers keeps the rule's numbers. The text says top speeds stay unchanged. The rule sets bank scale to 0.7, multiplies top speed, braking and acceleration by 2.5, multiplies turn rate by 6, and sets the override adjust to 1. The comparison row allows no differences.

`{}MAC Bio-Armor.tam` and `{}MAC Incognito.tam` are titled "[MAC] Bio-Armor (Arm)" and "[MAC] Incognito (Arm)", the same titles as the Arm files. Their rows pass `--id`, and the import id is that id: `mac-bio-armor` and `mac-incognito`. Every other row writes `-` in the id column.

Useful Mines writes an empty yard map from the units hook. A rule that sets an empty value would remove the field, and the original sets `Yardmap` empty so the mines are hard to kill without area weapons. The original names `Category` twice, once for ` MINE` and once for `KAMIKAZE`. The Lua rules keep both tests as two needs on that field, and the hook uses the same two needs. The selection is the original's.

## Build, pack and check

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only --set igi-server
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" mac-units
```

That prints `build: mac-units: 35 imports, 16 packages, 1 files from originals`. Pack and check from `build/mac-units`:

```sh
S=$(mktemp -d -t L11)
for m in */oamut.yaml; do
  id=${m%/oamut.yaml}
  case $id in _*) continue;; esac
  "$T" mutator pack "$id" --out "$S/$id.oamut" && "$T" mutator check "$S/$id.oamut" --json > "$S/$id.json"
done
```

Paths in `_verify/comparisons.tsv` are relative to `build/mac-units`. A second `tools/build-packages --tool "$T" mac-units --out <empty folder>` matches `build/mac-units`.
