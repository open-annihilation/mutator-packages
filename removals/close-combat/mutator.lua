local function flag(unit, key)
  local value = unit[key]
  return value == true or value == 1
end

local function whole(value)
  if value == nil then
    return 0
  end
  return value
end

local function factory(unit)
  return flag(unit, "builder") and whole(unit.bmcode) == 0
end

local function contains(value, needle)
  return type(value) == "string" and string.find(value, needle, 1, true) ~= nil
end

-- No property separates the cannons, silos, anti-nukes and decoys, so the
-- original's own tests stay. They match nothing on a mod with other names.
local function named_class(unit)
  local sound = unit.soundcategory
  if contains(sound, "ARM_BRTHA") or contains(sound, "COR_INT") then
    return true
  end
  if sound == "NUC" then
    return true
  end
  if contains(unit.description, "Missile Defense") then
    return true
  end
  return unit.name == "Decoy Commander"
end

function mutate(ctx)
  return {
    units = function(units, ctx)
      local function flying(name)
        local unit = units[name]
        return unit ~= nil and flag(unit, "canfly")
      end

      local chosen = {}
      local function take(name)
        chosen[string.lower(name)] = name
      end

      for name, unit in pairs(units) do
        if flag(unit, "canfly") or named_class(unit) then
          take(name)
        end
      end
      for name, unit in pairs(units) do
        if factory(unit) then
          local offers = ctx.menus:builds(name)
          if #offers > 0 then
            local only_air = true
            for index = 1, #offers do
              if not flying(offers[index]) then
                only_air = false
                break
              end
            end
            if only_air then
              take(name)
            end
          end
        end
        if flag(unit, "isairbase") and whole(unit.bmcode) == 0 then
          take(name)
        end
      end
      for _, name in pairs(chosen) do
        units[name]:remove()
      end
    end,
  }
end
