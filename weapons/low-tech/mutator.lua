function mutate(ctx)
  return {
    menus = function(menus, ctx)
      local buttons = {
        { "ARMCA", "ARMAAP" },
        { "ARMCK", "ARMALAB" },
        { "ARMCS", "ARMASY" },
        { "ARMCV", "ARMAVP" },
        { "CORCA", "CORAAP" },
        { "CORCK", "CORALAB" },
        { "CORCS", "CORASY" },
        { "CORCV", "CORAVP" },
      }
      -- A mod without the builder or the plant, or without that button, keeps its menu.
      local skipped = { "does not build", "is a download entry", "unknown builder" }
      for i = 1, #buttons do
        local builder, unit = buttons[i][1], buttons[i][2]
        if ctx.units[builder] ~= nil and ctx.units[unit] ~= nil then
          local ok, err = pcall(function()
            menus:grey(builder, unit)
          end)
          if not ok then
            local known = false
            for j = 1, #skipped do
              if string.find(tostring(err), skipped[j], 1, true) then
                known = true
              end
            end
            if not known then
              error(err, 0)
            end
          end
        end
      end
    end,
  }
end
