function mutate(ctx)
  return {
    rules = {
      where { builder = 1, bmcode = 0 }:change {
        workertime = scale(5.0, 10, 30000),
        buildcostmetal = scale(2),
        buildcostenergy = scale(2),
      },
      where { bmcode = 1 }:change {
        buildtime = scale(5.0, 1, 600000),
      },
      where { builder = 1, bmcode = 1 }:change {
        workertime = scale(0.5, 10, 30000),
        maxdamage = scale(1.5, 1, 29900),
        buildtime = scale(1.3, 1, 600000),
        buildcostmetal = scale(1.3),
        buildcostenergy = scale(1.3),
        maxvelocity = scale(1.25),
        turnrate = scale(1.6),
        brakerate = scale(1.6),
        acceleration = scale(1.25),
      },
      where { canfly = 1, bmcode = 1 }:change {
        maxvelocity = scale(0.66666666),
      },
      all():change {
        buildtime = scale(1.2),
        buildcostmetal = scale(1.5),
        buildcostenergy = scale(1.5),
      },
      where { commander = 1, bmcode = 1 }:change {
        energymake = scale(5),
        metalmake = scale(5),
      },
      on("weapons", "tdf"):change {
        ["<AllDepth2>"] = scale(0.333333333),
        range = scale(0.6666666666),
      },
    },
  }
end
