-- Metal cost, missing counts as 0: 0 to 99, 100 to 499, 500 to 1999,
-- 2000 to 9999, and anything else. The energy bands and the width bands
-- are left out. The original's later blocks overwrote them for every unit.
local function band(metal)
  if metal >= 0 and metal <= 99 then
    return 1
  elseif metal >= 100 and metal <= 499 then
    return 2
  elseif metal >= 500 and metal <= 1999 then
    return 3
  elseif metal >= 2000 and metal <= 9999 then
    return 4
  end
  return 5
end

local function from_depth(depth)
  if depth == 1 or depth == 2 then
    return 50
  elseif depth == 3 then
    return 70
  elseif depth == 4 then
    return 100
  elseif depth == 5 then
    return 140
  end
  return 200
end

function mutate(ctx)
  local distance = ctx.options.distance
  local cost = ctx.options.cost
  return {
    rules = {
      all():change { init_cloaked = set(1) },
    },
    units = function(units, ctx)
      for _, unit in pairs(units) do
        local metal = unit.buildcostmetal
        if metal == nil then
          metal = 0
        end
        local group = band(metal)
        unit.cloakcost = group * cost
        unit.cloakcostmoving = 2 * group * cost
        if unit.bmcode == 1 then
          local depth = unit.footprintz
          if depth == nil then
            depth = 0
          end
          unit.mincloakdistance = from_depth(depth)
        end
        local present = unit:get("mincloakdistance")
        if present ~= nil then
          unit.mincloakdistance = present * distance
        end
      end
    end,
  }
end
