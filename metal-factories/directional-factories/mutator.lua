function mutate(ctx)
  return {
    files = { add = { "files" } },
    menus = function(menus, ctx)
      -- A plant builds and does not move. The same test applies to the
      -- offered unit and to the candidate named by W, N or E.
      local function plant(unit)
        return unit ~= nil and unit.builder and (unit.bmcode or 0) == 0
      end
      -- Where the place asked for cannot be had, the first free slot; nil
      -- when the builder has none left. A request never names a page past 7.
      local function add(builder, name, place)
        local ok, landed
        if place ~= nil then
          ok, landed = pcall(function() return menus:add(builder, name, place) end)
          if ok then return landed end
        end
        ok, landed = pcall(function() return menus:add(builder, name) end)
        if ok then return landed end
        print(builder .. " has no free build slot for " .. name)
        return nil
      end
      for _, unit in pairs(ctx.units) do
        if unit.builder then
          local builder = unit.unitname
          local page, slot
          for _, base in ipairs(menus:builds(builder)) do
            if plant(ctx.units[base]) then
              for _, suffix in ipairs({ "W", "N", "E" }) do
                local found = ctx.units[base .. suffix]
                if plant(found) then
                  local place = { page = "new" }
                  if page ~= nil then
                    slot = slot + 1
                    if slot > 6 then
                      page, slot = page + 1, 1
                    end
                    place = page <= 7 and { page = page, slot = slot } or nil
                  end
                  local landed = add(builder, found.unitname, place)
                  if landed ~= nil then
                    page, slot = landed.page, landed.slot
                  end
                end
              end
            end
          end
        end
      end
    end,
  }
end
