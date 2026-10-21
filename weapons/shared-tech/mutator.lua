function mutate(ctx)
  return {
    menus = function(menus, ctx)
      local commanders = {}
      ctx.units:where { commander = 1, bmcode = 1 }:each(function(unit)
        local name = unit.unitname
        if name ~= nil and name ~= "" then
          commanders[#commanders + 1] = name
        end
      end)

      local factories = {}
      ctx.units:where { builder = 1, bmcode = 0 }:each(function(unit)
        local name = unit.unitname
        if name ~= nil and name ~= "" then
          factories[#factories + 1] = name
        end
      end)

      local offers = {}
      for i = 1, #commanders do
        local offered = {}
        local built = menus:builds(commanders[i])
        for j = 1, #built do
          offered[string.lower(built[j])] = true
        end
        offers[i] = offered
      end

      for i = 1, #commanders do
        local adding = {}
        for j = 1, #factories do
          local factory = factories[j]
          local key = string.lower(factory)
          if not offers[i][key] then
            local elsewhere = false
            for k = 1, #commanders do
              if k ~= i and offers[k][key] then
                elsewhere = true
                break
              end
            end
            if elsewhere then
              adding[#adding + 1] = factory
            end
          end
        end

        -- One new page holds the factories. A commander has only three
        -- pages free, and the originals put these buttons on one page.
        local page = nil
        local slot = 1
        for j = 1, #adding do
          local place
          if page == nil or slot > 6 then
            place = menus:add(commanders[i], adding[j], { page = "new" })
          else
            place = menus:add(commanders[i], adding[j], { page = page, slot = slot })
          end
          page = place.page
          slot = place.slot + 1
        end
      end
    end,
  }
end
