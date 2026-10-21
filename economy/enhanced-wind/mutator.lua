function mutate(ctx)
  local needs = { bmcode = 0, windgenerator = range(1, 1e7) }
  if ctx.options.side == "arm" then
    needs.side = is("ARM")
  elseif ctx.options.side == "core" then
    needs.side = is("CORE")
  end
  return {
    rules = {
      where(needs):change {
        buildcostenergy = scale(2.5),
        buildcostmetal = scale(2.5),
        buildtime = scale(2.5),
        windgenerator = scale(3),
      },
    },
  }
end
