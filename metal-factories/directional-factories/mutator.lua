function mutate(ctx)
  return {
    files = { add = { "files" } },
    -- The first add opens a page of the builder's own. Each later "new"
    -- would open another page, and one builder can be offered more of
    -- these factories than it has pages left, so the rest fill that page.
    menus = function(menus, ctx)
      local suffixes = { "W", "N", "E" }
      for _, unit in pairs(ctx.units) do
        if unit.builder then
          local builder = unit.unitname
          local offered = menus:builds(builder)
          local page = nil
          local slot = nil
          for index = 1, #offered do
            local base = offered[index]
            for suffix = 1, #suffixes do
              local found = ctx.units[base .. suffixes[suffix]]
              if found ~= nil then
                local name = found.unitname
                local place
                if page == nil then
                  place = menus:add(builder, name, { page = "new" })
                else
                  slot = slot + 1
                  if slot > 6 then
                    page = page + 1
                    slot = 1
                  end
                  place = menus:add(builder, name, { page = page, slot = slot })
                end
                page = place.page
                slot = place.slot
              end
            end
          end
        end
      end
    end,
  }
end
