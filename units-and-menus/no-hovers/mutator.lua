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

-- A hover plant offers at least one unit, and every unit it offers hovers.
-- A hovercraft another builder also offers stays, and so does every commander.
function mutate(ctx)
  return {
    units = function(units, ctx)
      local function hovers(name)
        local unit = units[name]
        return unit ~= nil and flag(unit, "canhover")
      end

      local plants = {}
      for name, unit in pairs(units) do
        if factory(unit) then
          local offers = ctx.menus:builds(name)
          if #offers > 0 then
            local only_hovers = true
            for index = 1, #offers do
              if not hovers(offers[index]) then
                only_hovers = false
                break
              end
            end
            if only_hovers then
              plants[string.lower(name)] = name
            end
          end
        end
      end

      local offered = {}
      for _, name in pairs(plants) do
        local offers = ctx.menus:builds(name)
        for index = 1, #offers do
          offered[string.lower(offers[index])] = offers[index]
        end
      end

      local shared = {}
      for name, unit in pairs(units) do
        if plants[string.lower(name)] == nil and flag(unit, "builder") then
          local offers = ctx.menus:builds(name)
          for index = 1, #offers do
            local key = string.lower(offers[index])
            if offered[key] ~= nil then
              shared[key] = true
            end
          end
        end
      end

      for _, name in pairs(plants) do
        units[name]:remove()
      end
      for key, name in pairs(offered) do
        if shared[key] == nil and plants[key] == nil then
          local unit = units[name]
          if unit ~= nil then
            unit:remove()
          end
        end
      end
    end,
  }
end
