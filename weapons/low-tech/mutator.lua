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
      for i = 1, #buttons do
        menus:grey(buttons[i][1], buttons[i][2])
      end
    end,
  }
end
