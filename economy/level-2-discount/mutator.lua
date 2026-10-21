function mutate(ctx)
  return {
    rules = {
      -- Not a builder, aircraft, floater, hovercraft or water class.
      where {
        category = has("LEVEL2"),
        bmcode = 1,
        builder = not_(range(1, 1)),
        canfly = not_(range(1, 1)),
        floater = not_(range(1, 1)),
        canhover = not_(range(1, 1)),
        tedclass = not_(is("WATER")),
      }:change {
        buildcostenergy = scale(0.7),
        buildcostmetal = scale(0.7),
        buildtime = scale(0.7),
      },
    },
  }
end
