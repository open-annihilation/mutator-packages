function mutate(ctx)
  return {
    menus = function(menus, ctx)
      -- A commander that builds nothing has no menu to add to.
      local commanders = {}
      ctx.units:where { commander = 1, bmcode = 1, builder = 1 }:each(function(unit)
        local name = unit.unitname
        if name ~= nil and name ~= "" then
          commanders[#commanders + 1] = name
        end
      end)

      -- A factory builds and does not move. An air repair pad is not one.
      local factory = {}
      ctx.units:where { builder = 1, bmcode = 0, isairbase = 0 }:each(function(unit)
        local name = unit.unitname
        if name ~= nil and name ~= "" then
          factory[string.lower(name)] = true
        end
      end)

      local lists, offers = {}, {}
      for i = 1, #commanders do
        local built = menus:builds(commanders[i])
        local offered = {}
        for j = 1, #built do
          offered[string.lower(built[j])] = true
        end
        lists[i], offers[i] = built, offered
      end

      for i = 1, #commanders do
        -- In the order the other commanders offer them, as the originals' page lists them.
        local adding, seen = {}, {}
        for k = 1, #commanders do
          if k ~= i then
            for j = 1, #lists[k] do
              local key = string.lower(lists[k][j])
              if factory[key] and not offers[i][key] and not seen[key] then
                seen[key] = true
                adding[#adding + 1] = lists[k][j]
              end
            end
          end
        end

        -- One new page holds the factories; a full page opens another.
        -- A commander with no free slot left keeps its menu as it is.
        local page = nil
        local slot = 1
        for j = 1, #adding do
          local place = { page = "new" }
          if page ~= nil and slot <= 6 then
            place = { page = page, slot = slot }
          end
          local ok, result = pcall(function()
            return menus:add(commanders[i], adding[j], place)
          end)
          if not ok then
            if not string.find(tostring(result), "no free build slot", 1, true) then
              error(result, 0)
            end
            break
          end
          page = result.page
          slot = result.slot + 1
        end
      end
    end,
  }
end
