-- Lines the originals left commented out are not changes.
-- `for` is a Lua keyword, so the choice is read with brackets.

local function taucp()
  return {
    named("ARMNTOW"):change {
      BuildCostEnergy = 0,
      BuildCostMetal = 0,
      MaxSlope = 20,
      BuildTime = 10,
      WorkerTime = 1000,
      SightDistance = 400,
      Category = "ARM LEVEL3 CONSTR NOWEAPON NOTAIR NOTSUB",
      mobilestandorders = 1,
      StandingMoveOrder = 1,
      Builddistance = 900,
      DefaultMissionType = "RepairPatrol",
      maneuverleashlength = 900,
      MaxWaterDepth = lock(255),
      ExplodeAs = "NOWEAPON",
      SelfDestructAs = "NOWEAPON",
      SelfDestructCountdown = 0,
    },
    named("ARMMTLAB"):change {
      BuildCostEnergy = 9277,
      BuildCostMetal = 3457,
      MaxWaterDepth = lock(255),
      MaxSlope = 20,
      BuildTime = 12120,
    },
  }
end

local function utasp()
  return {
    named("ARMMTLAB"):change {
      BuildCostEnergy = 14669,
      BuildCostMetal = 4127,
      BuildTime = 34036,
      MaxSlope = 20,
      MaxWaterDepth = lock(255),
    },
    named("ARMNTOW"):change {
      BuildCostEnergy = 0,
      BuildCostMetal = 0,
      BuildTime = 10,
      MaxSlope = 20,
      WorkerTime = 1000,
      SightDistance = 900,
      Builddistance = 900,
      DefaultMissionType = "RepairPatrol",
      maneuverleashlength = 900,
      mobilestandorders = 1,
      StandingMoveOrder = 0,
      ai_weight = "weight ARMNTOW 0",
      ai_limit = "limit ARMNTOW 0",
      MaxWaterDepth = lock(255),
      ExplodeAs = "NOWEAPON",
      SelfDestructAs = "NOWEAPON",
      SelfDestructCountdown = 0,
    },
    named("ARMTNTOW"):change {
      BuildCostEnergy = 8424,
      BuildCostMetal = 816,
      BuildTime = 14240,
      MaxSlope = 20,
      WorkerTime = 750,
      SightDistance = 720,
      Builddistance = 720,
      DefaultMissionType = "RepairPatrol",
      maneuverleashlength = 720,
      mobilestandorders = 1,
      StandingMoveOrder = 0,
      ai_weight = "weight ARMTNTOW 0",
      ai_limit = "limit ARMTNTOW 0",
      MaxWaterDepth = lock(255),
      ExplodeAs = "NOWEAPON",
      SelfDestructAs = "NOWEAPON",
      SelfDestructCountdown = 0,
    },
    named("ARMTFLAK"):change {
      BuildCostEnergy = 7280,
      BuildCostMetal = 624,
      BuildTime = 14256,
      MaxSlope = 20,
      Category = "ARM LEVEL3 NOWEAPON NOTAIR NOTSUB",
      StandingMoveOrder = 0,
    },
    named("ARMTMRPC"):change {
      BuildCostEnergy = 5920,
      BuildCostMetal = 1304,
      BuildTime = 9947,
      MaxSlope = 20,
      Category = "ARM LEVEL3 NOWEAPON NOTAIR NOTSUB",
      StandingMoveOrder = 0,
    },
    named("ARMTROCK"):change {
      BuildCostEnergy = 9320,
      BuildCostMetal = 1708,
      BuildTime = 18800,
      MaxSlope = 20,
      Category = "ARM LEVEL3 NOWEAPON NOTAIR NOTSUB",
      StandingMoveOrder = 0,
    },
  }
end

function mutate(ctx)
  local written_for = ctx.options["for"]
  return {
    rules = written_for == "taucp" and taucp() or utasp(),
  }
end
