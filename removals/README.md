# Removals, toggles and tables

Eighteen packages replace twenty of the twenty-two TA: Mutation removal, toggle and table mutators. MAC (macraig)'s Friendly Skies and Even Friendlier Skies are the aircraft option on No Air. Hover Craft Fix and Vibrant Colors are not converted. Every rule is Lua. Double LOS is the only package that ships a file from the originals, and Files names that file.

`originals/` and `build/` are gitignored. The commands below build the faithful imports and the curated packages under `build/removals/`. L21 compares each row and records the reports and the allowed-difference files.

## Originals

| Title | Author | Source under `originals/` | Import | Package | Comparison rows |
|---|---|---|---|---|---|
| No Air | Drinken | `Mutators/{}NoAir.tam` | `no-air` | `no-air` | `no-air` |
| No Hovers | Total Dave / Davicius | `Mutators/{}NoHover.tam` | `no-hovers` | `no-hovers` | `no-hovers` |
| Close Combat | Drinken | `Mutators/{}CloseCombat.tam` | `close-combat` | `close-combat` | `close-combat` |
| No Corpses | Drinken | `Mutators/{}NoCorpses.tam` | `no-corpses` | `no-corpses` | `no-corpses` |
| Non-blocking Corpses | ATRCaptainKirk | `Mutators/{}Non-blockingCorpses.tam` | `non-blocking-corpses` | `non-blocking-corpses` | `non-blocking-corpses` |
| Hide Damage | Kirk | `Mutators/{}HideDamage.tam` | `hide-damage` | `hide-damage` | `hide-damage` |
| Shootall | ATRCaptainKirk | `Mutators/{}Shootall.tam` | `shootall` | `shootall` | `shootall` |
| Trans allow fire | Drinken | `Mutators/{}Trans_allow_fire_sm.tam` | `trans-allow-fire` | `transports-fire` | `transports-fire` |
| Subversion | Immerman | `Mutators/{}Subversion.tam` | `subversion` | `subversion` | `subversion` |
| They Live Again | Immerman | `Mutators/{}TheyLiveAgain.tam` | `they-live-again` | `they-live-again` | `they-live-again` |
| StealthySpies | uncredited | `Mutators/{}StealthySpies.tam` | `stealthyspies` | `stealthy-spies` | `stealthy-spies` |
| Hover Craft Fix | Davicius / Total Dave | `Mutators/{}HoverFix.tam` | `hover-craft-fix` | not converted | — |
| CloakMod v1.0 | me22 | `Mutators/{}CloakMod1-0.tam` | `cloakmod-v1-0` | `cloakmod` | `cloakmod`, `cloakmod-see`, `cloakmod-expensive` |
| CloakMod v1.0: +NowISee | me22 | `Mutators/{}CloakMod1-0-CanSee.tam` | `cloakmod-v1-0-nowisee` | `cloakmod`, distance 5 | `cloakmod-see` |
| CloakMod v1.0: Expen$ive | me22 | `Mutators/{}CloakMod1-0-Expensive.tam` | `cloakmod-v1-0-expen-ive` | `cloakmod`, cost 2 | `cloakmod-expensive` |
| AI weight & limit remover | Drinken | `Mutators/{}Weight&Limit_Remover.tam` | `ai-weight-limit-remover` | `ai-tag-remover` | `ai-tag-remover` |
| Double LOS | Gamma and Kirk | `Mutators/{}DoubleLOS.tam` with `Mutators/{}DoubleLOS(1).ccx` | `double-los` | `double-los` | `double-los` |
| Double Ranges | ATRCaptainKirk | `S-Mutators/DoubleRanges_mutator.zip` | `double-ranges` | `double-ranges` | `double-ranges` |
| Double Area of Effect | ATRCaptainKirk | `S-Mutators/DoubleAoE_mutator.zip` | `double-area-of-effect` | `double-aoe` | `double-aoe` |
| Double Reload Times | ATRCaptainKirk | `S-Mutators/DoubleReloadTimes_mutator.zip` | `double-reload-times` | `double-reload` | `double-reload` |
| Weapon Tolerance | uncredited | `Mutators/}{Tolerance.tam` with `Mutators/}{Tolerance.ccx` | `weapon-tolerance` | `weapon-tolerance` | `weapon-tolerance` (no import to compare) |
| Vibrant Colors | Immerman | `Mutators/}{VibrantColors.tam` with `Mutators/}{VibrantColors.ccx` | `vibrant-colors` | not converted | — |
| [MAC] Friendly Skies | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Friendly Skies.tam` | `mac-friendly-skies` | `no-air`, aircraft combat | `no-air-combat` |
| [MAC] Even Friendlier Skies | MAC (macraig) | `igi-server/MAC's mutators/{}MAC Even Friendlier Skies.tam` | `mac-even-friendlier-skies` | `no-air`, aircraft all | `no-air-even` |

Cloak distance 5 is what CloakMod v1.0 and +NowISee gave together. Cloak cost 2 is what CloakMod v1.0 and Expen$ive gave together. The option labels are Cloak distance and Cloak cost.

## Not converted

Hover Craft Fix is kept as an import and has no curated package. It sets `TEDClass` to Hover on mobile hovercraft other than ARMAMPH. Open Annihilation does not read `TEDClass`, so the change does nothing. An AI class for hovercraft is later engine work. The import is kept for the record.

Vibrant Colors is kept as an import and has no curated package. Its only file replaces `palettes/PALETTE.pal`. Palettes are read once per run and protected by Decision 4, so a mutator may not replace one. An engine colour filter is the better route. The import leaves the palette out and changes nothing. `build/removals/_logs/import-vibrant-colors.txt` records P05's warning:

```
left out }{VibrantColors.ccx: palettes/PALETTE.pal (read-once)
the mutator changes nothing
```

## Differences from the originals

A unit removed with `remove()` and a unit the import removes with a blank copyright line compare as one drop, with their menu entries. A unit only one side drops keeps its hidden unit file and its build button. No curated package writes a copyright line or a version.

`no-air.allowed`: No Air's exact sound category `ARM_SEAPLN_PLANT` misses the Core seaplane platform, CORPLAT. The package removes every factory whose menu offers at least one unit and whose offered units can all fly, so CORPLAT goes with the Arm platform, the aircraft plants and the aircraft. Stationary air bases are removed by `isairbase`, which on Total Annihilation 3.1c is ARMASP and CORASP. Those two already use the sound category AIRPLANT, so the original removed them too. The allowed file names that one drop (`unit dropped CORPLAT hidden`), the hidden file `units/corplat.fbi`, and the platform's button on `guis/coracsub1.gui` (gadget 8, `grayedout` and `commonattribs`).

`no-air-even.allowed`: Even Friendlier Skies removed only the aircraft and left the air plants, the seaplane platforms and the repair pads with nothing to build or serve. `no-air` with aircraft all removes them too. The allowance names those eight drops (ARMAP, ARMAAP, CORAP, CORAAP, ARMPLAT, CORPLAT, ARMASP, CORASP), each `left only unit dropped <NAME> hidden`, and the hidden unit file and build-button lines the comparison shows for the same units. A drop only one side makes is not folded into the unit line, which is the same reporting as `no-air.allowed` for CORPLAT. Friendly Skies is aircraft combat: armed aircraft that do not build, and no factory or pad, so `no-air-combat` allows nothing.

`no-hovers.allowed`: No Hovers removed the hover plants ARMHP and CORHP and left the hovercraft in the game, unbuildable. The package removes those plants, then every unit that only they offer. On 3.1c that is the twelve hovercraft ARMCH, ARMSH, ARMANAC, ARMAH, ARMMH, ARMTHOVR, CORCH, CORSH, CORSNAP, CORAH, CORMH and CORTHOVR. Each has `canhover` 1. The allowed file names each one's drop and its hidden unit file. Their build buttons sit on the plants, which both sides remove, so those buttons compare equal. A unit another builder offers stays. The Pelican, ARMAMPH, also hovers but is built by the amphibious lab, so it stays, and so does every commander.

`non-blocking-corpses.allowed`: The original cleared blocking on every feature in the corpses folder. A features hook clears blocking on the wreck a unit names as its corpse and on each feature that wreck turns into, followed to the end of the chain. It reads units to find those wrecks, which needs no layer, and the package declares only features. A wreck stored outside that folder counts. A unit that is itself a feature, such as dragon's teeth, leaves that feature, not a wreck, so it keeps blocking. On 3.1c those units are ARMDRAG, CORDRAG, ARMFDRAG, CORFDRAG, ARMFORT and CORFORT, and the chain keeps DRAGONSTEETH, DRAGONSTEETH_CORE, ROCKTEETH, FLOATINGTEETH, FLOATINGTEETH_CORE, FORTIFICATION and FORTIFICATION_CORE blocking. The comparison shows no wreck kept outside the corpses folder. The allowed file covers the 26 corpses-folder features no unit leaves, which keep blocking, one `blocking` line each. Eighteen are aircraft wrecks whose units name no corpse: ARMACA_DEAD, ARMATLAS_DEAD, ARMBRAWL_DEAD, ARMCA_DEAD, ARMFIG_DEAD, ARMHAWK_DEAD, ARMLANCE_DEAD, ARMPEEP_DEAD, ARMPNIX_DEAD, CORACA_DEAD, CORAPE_DEAD, CORFINK_DEAD, CORHURC_DEAD, CORSHAD_DEAD, CORTITAN_DEAD, CORVALK_DEAD, CORVAMP_DEAD and CORVENG_DEAD. The other eight are ARMSEER_DEAD and CORVRAD_DEAD (those units leave armjam_dead), CORGOL_DEAD (CORGOL leaves corvroc_dead), CORFMD_DEAD (CORFMD leaves armamd_dead), ARMVADER_DEAD, CORFMKR_DEAD and CORROACH_DEAD (those units name no corpse), and CORMLS_DEAD (3.1c has no CORMLS unit).

`stealthy-spies.allowed`: StealthySpies names ARMSPY and CORSPY, sets stealth, and also sets a jammer range of 40. That range was written for Uberhack's spies. The text says stealth rather than personal jamming, and 3.1c's spies have no jammer, so the package sets stealth only. The allowed file names the two `radardistancejam` lines the import adds, on `units/armspy.fbi` and `units/corspy.fbi`.

CloakMod's twenty-two groups are one function. Every unit starts cloaked. The cloak band comes from the metal cost, and a missing metal cost reads as 0, so ARMFMKR and CORFMKR fall in the first band: 0 to 99 gives 1, 100 to 499 gives 2, 500 to 1999 gives 3, 2000 to 9999 gives 4, and anything else gives 5. Cloak cost is the band times the cost option, and cloak cost while moving is twice that. A mobile unit's cloak distance comes from its depth: 1 or 2 gives 50, 3 gives 70, 4 gives 100, 5 gives 140, and anything else gives 200. Every unit that has a cloak distance, set here or its own, is then multiplied by the distance option. The original's energy bands and width bands are left out. TA: Mutation averaged the two energy values, it did not overwrite them, so ARMCOM got a cloak cost of 4.5 and a moving cost of 9. Open Annihilation runs rules in sequence (Q63), so the later block replaces the earlier one and this package gives 5 and 10, matching the faithful import. Expen$ive's rules multiply by 2. Its text said 5.

Weapon Tolerance's 65 Uberhack weapon files are one rule. A weapon gains tolerance 500 when some unit fires it from weapon 1, weapon 2 or weapon 3 and it does not already have a tolerance. Death blasts, mine blasts, meteors and the like are not one of those three weapons, so they keep none. The original's Core Scorpion file replaced the weapon and still left CORSCORP_WEAPON without a tolerance. CORSCORP fires that weapon, and 3.1c gives it no tolerance, so this rule sets 500. Against the original's files on 3.1c, the rule also gives 500 to ARMAIR2AIRLASER, CORAIR2AIRLASER and ARM_BATS, which the Uberhack set has no section for, and to CORSCORP_WEAPON. The original gave CORBOMB and CORADVBOMB 500 and left ARMBOMB and ARMADVBOMB without one; this rule gives all four 500. There is no field comparison with the import: the Uberhack files carry that balance in every other field. `weapon-tolerance`'s report is the check.

Double Reload Times matches its import, including a reload time spelled with a leading dot. On 3.1c that is 28 weapons, and both sides double them, now that the engine reads that spelling (R07).

Double LOS keeps the sight and radar factors and ships `files/gamedata/los.tdf` from `Mutators/{}DoubleLOS(1).ccx`, entry `gamedata/los.tdf`, SHA-256 `47f7079821ce0d0123d844d47343ad82483a48f13b70eed7c2877d9228e5de6a`. The table holds 32 sight entries where 3.1c holds 9, so doubled sight is not cut short.

AI Tag Remover drops `ai_weight` and `ai_limit` when the field is present. The original looked for the text "we" and "li". On this game every unit that has either field holds that text, so the same units match.

## Files

### double-los

| Path in the package | Source under `originals/` | Entry | SHA-256 |
|---|---|---|---|
| `files/gamedata/los.tdf` | `Mutators/{}DoubleLOS(1).ccx` | `gamedata/los.tdf` | `47f7079821ce0d0123d844d47343ad82483a48f13b70eed7c2877d9228e5de6a` |

## Build, pack and check

From this repository, with the mutators environment sourced:

```sh
tools/fetch-originals --local-only
T=$OA_WT/mutators-engine/build/oa-tool
tools/build-packages --tool "$T" removals
```

That prints `build: removals: 24 imports, 18 packages`. Pack and check from `build/removals`:

```sh
S=$(mktemp -d -t L06)
for m in */oamut.yaml; do
  id=${m%/oamut.yaml}
  case $id in _*) continue;; esac
  "$T" mutator pack "$id" --out "$S/$id.oamut" && "$T" mutator check "$S/$id.oamut" --json > "$S/$id.json"
done
```

Paths in `_verify/comparisons.tsv` are relative to `build/removals`. A second `tools/build-packages --tool "$T" removals --out <empty folder>` matches `build/removals`.
