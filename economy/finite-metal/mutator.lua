function mutate(ctx)
  local counter = ctx.options.counter_strike == "yes"
  return {
    files = { add = { "files" } },
    units = function(units, ctx)
      local needs = {
        metalmake = range(0.00001, 10000),
      }
      if counter then
        needs.soundcategory = not_(is("GATE"))
      end
      units:where(needs):each(function(unit)
        unit.metalmake = nil
      end)
      units:where { extractsmetal = range(0.000001, 1000) }:remove()
      units:where {
        description = is("Highly unstable Rock to Metal subatomic converter"),
      }:remove()
      local behemoth = units["CORBHMTH"]
      if behemoth ~= nil then
        behemoth:remove()
      end
      if counter then
        for _, name in ipairs({ "FLUXOR", "QUARK" }) do
          local resource = units[name]
          if resource ~= nil then
            resource.metalmake = 5
          end
        end
      end
    end,
  }
end
