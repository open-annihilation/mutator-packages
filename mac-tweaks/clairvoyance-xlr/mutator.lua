local function xlr(unit_name, sound)
  return where {
    UnitName = unit_name,
    Description = has("Radar"),
    SoundCategory = sound,
    RadarDistance = range(4000, 32000),
  }:change {
    RadarDistance = 13000,
    SonarDistance = 13000,
    Init_Cloaked = 1,
  }
end

function mutate(ctx)
  local rules = {}
  local side = ctx.options.side
  if side == "all" or side == "arm" then
    rules[#rules + 1] = xlr("ArmBeac", "ARM_ADVRADAR")
    rules[#rules + 1] = xlr("ArmEye", "ARM_ADVRADAR")
  end
  if side == "all" or side == "core" then
    rules[#rules + 1] = xlr("CorBeac", "CORE_ADVRADAR")
    rules[#rules + 1] = xlr("CorEye", "CORE_ADVRADAR")
  end
  return {
    rules = rules,
  }
end
