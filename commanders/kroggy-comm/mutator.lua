-- HealTime, OvrAdjust, DefaultMissionType and the localized names stay.
-- The 2001 unit files predate those 3.1c fields, so their absence is not the Krogoth's design.
local function krogoth_changes(sound)
  local changes = {
    acceleration = set(0.09),
    badtargetcategory = remove(),
    brakerate = set(0.19),
    buildcostenergy = set(116664),
    buildcostmetal = set(29489),
    builddistance = set(120),
    buildtime = set(382193),
    cantbetransported = set(1),
    cloakcost = remove(),
    cloakcostmoving = remove(),
    corpse = set("corkrog_dead"),
    downloadable = set(1),
    energymake = set(32),
    energyuse = set(7),
    explodeas = set("NUCLEAR_MISSILE"),
    footprintx = set(3),
    footprintz = set(3),
    maxdamage = set(29918),
    maxslope = set(17),
    maxvelocity = set(1),
    maxwaterdepth = set(12),
    mincloakdistance = remove(),
    movementclass = set("TANKDH3"),
    noautofire = set(0),
    objectname = set("KROGCOM"),
    onoffable = set(1),
    selfdestructas = set("NUCLEAR_MISSILE"),
    sightdistance = set(255),
    turnrate = set(960),
    weapon1 = set("CORKROG_FIRE"),
    weapon2 = set("CORKROG_ROCKET"),
    weapon3 = set("CORKROG_HEAD"),
    wpri_badtargetcategory = remove(),
  }
  if sound ~= nil then
    changes.soundcategory = set(sound)
  end
  return changes
end

function mutate(ctx)
  return {
    files = { add = { "files" } },
    rules = {
      named("ARMCOM"):change(krogoth_changes("KROGOTH")),
      named("CORCOM"):change(krogoth_changes(nil)),
    },
    units = function(units, ctx)
      local weapons = ctx.weapons
      if weapons["CORKROG_FIRE"] == nil or weapons["CORKROG_ROCKET"] == nil or weapons["CORKROG_HEAD"] == nil then
        ctx.incompatible("KroggyComm needs Core Contingency's Krogoth weapons")
      end
    end,
  }
end
