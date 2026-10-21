function mutate(ctx)
  return {
    rules = {
      where { bmcode = 0, windgenerator = range(1, 1e7) }:change {
        buildcostenergy = scale(2.5),
        buildcostmetal = scale(2.5),
        buildtime = scale(2.5),
        windgenerator = scale(3),
      },
    },
  }
end
