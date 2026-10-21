local function flag(weapon, key)
  local value = weapon[key]
  return value == true or value == 1
end

-- Death blasts, mine blasts and meteors are not a unit's weapon 1, 2 or 3,
-- so they keep no tolerance. A bomb is dropped and keeps none too.
function mutate(ctx)
  return {
    weapons = function(weapons, ctx)
      local fired = {}
      for _, unit in pairs(ctx.units) do
        for _, key in ipairs({ "weapon1", "weapon2", "weapon3" }) do
          local name = unit[key]
          if type(name) == "string" and name ~= "" then
            fired[string.lower(name)] = true
          end
        end
      end
      for name, weapon in pairs(weapons) do
        if fired[string.lower(name)] and weapon:get("tolerance") == nil and not flag(weapon, "dropped") then
          weapon.tolerance = 500
        end
      end
    end,
  }
end
