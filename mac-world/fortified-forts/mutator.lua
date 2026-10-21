-- One Lua table cannot hold Category four times. The four casings are one
-- field, and each need is kept.
local function weapon_needs(class)
  return {
    bmcode = 0,
    tedclass = class,
    category = has("WEAPON"),
    Category = not_(has("METAL")),
    CATEGORY = not_(has("ENERGY")),
    cAtegory = not_(has("EXTRACTOR")),
  }
end

local function hp_needs(class, modifier)
  local needs = weapon_needs(class)
  needs.maxdamage = not_(is("0"))
  needs.damagemodifier = modifier
  return needs
end

local function modifier_needs(class)
  local needs = weapon_needs(class)
  needs.damagemodifier = range(0.00000001, 1)
  needs.DamageModifier = has("")
  return needs
end

local function fortify(feature)
  local text = feature.damage
  if type(text) ~= "string" then
    return
  end
  local number = tonumber(text)
  if number == nil then
    return
  end
  local scaled = number * 20
  if scaled < 1 then
    scaled = 1
  elseif scaled > 30000 then
    scaled = 30000
  end
  feature.damage = scaled
end

function mutate(ctx)
  local hp_change = {
    maxdamage = scale(7, 1, 30000),
  }
  local modifier_change = {
    damagemodifier = scale(0.07, 0.00000001, 1),
  }
  return {
    rules = {
      -- DamageModifier=!0.00000001,1 was meant as "has no damage modifier".
      -- A missing key reads as 1, inside that range, so the group matched
      -- nothing. absent() selects the missing key. A modifier written
      -- outside the range still takes the same hit-point scale.
      where(hp_needs("FORT", absent())):change(hp_change),
      where(hp_needs("FORT", not_(range(0.00000001, 1)))):change(hp_change),
      where(modifier_needs("FORT")):change(modifier_change),
      where(hp_needs("WATER", absent())):change(hp_change),
      where(hp_needs("WATER", not_(range(0.00000001, 1)))):change(hp_change),
      where(modifier_needs("WATER")):change(modifier_change),
    },
    units = function(units, ctx)
      ctx.features:where {
        category = "dragonteeth",
        blocking = "1",
        height = not_(is("0")),
        autoreclaimable = not_(is("1")),
      }:each(fortify)
    end,
  }
end
