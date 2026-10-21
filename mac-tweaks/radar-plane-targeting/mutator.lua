local function eagle()
  return named("ARMAWAC"):change {
    CanAttack = 1,
    HoverAttack = 1,
    Weapon1 = "FLAMETHROWER",
    Stealth = 1,
  }
end

local function seahawk()
  return named("ARMSEHAK"):change {
    CanAttack = 1,
    HoverAttack = 1,
    Weapon1 = "ARMSEAP_WEAPON1",
    Stealth = 1,
    CloakCost = 10,
    CloakCostMoving = 50,
    MinCloakDistance = 1,
    init_cloaked = 1,
    MaxWaterDepth = 255,
  }
end

function mutate(ctx)
  local rules = {}
  local plane = ctx.options.plane
  if plane == "both" or plane == "eagle" then
    rules[#rules + 1] = eagle()
  end
  if plane == "both" or plane == "seahawk" then
    rules[#rules + 1] = seahawk()
  end
  return {
    rules = rules,
  }
end
