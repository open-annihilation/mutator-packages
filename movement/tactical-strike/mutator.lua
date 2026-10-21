function mutate(ctx)
  return {
    rules = {
      where { builder = 1, bmcode = 0 }:change {
        workertime = scale(5.0, 10, 30000),
      },
      where { bmcode = 1 }:change {
        buildtime = scale(5.0, 1, 600000),
        maxdamage = scale(1.5, 1, 29900),
        buildcostmetal = scale(1.5),
        buildcostenergy = scale(1.5),
      },
      where { builder = 1, bmcode = 1 }:change {
        workertime = scale(0.83, 10, 30000),
        maxdamage = scale(1.5, 1, 29900),
        buildtime = scale(1.3, 1, 600000),
        buildcostmetal = scale(1.3),
        buildcostenergy = scale(1.3),
        maxvelocity = scale(1.25),
        turnrate = scale(1.6),
        brakerate = scale(1.6),
        acceleration = scale(1.25),
      },
      where { canfly = not_(range(1, 1)), bmcode = 1 }:change {
        maxvelocity = scale(1.5),
        turnrate = scale(2.25),
        brakerate = scale(2.25),
        acceleration = scale(1.5),
      },
      all():change {
        maxdamage = scale(2.0, 1, 29900),
        buildtime = scale(1.2),
        buildcostmetal = scale(1.5),
        buildcostenergy = scale(1.5),
      },
      where { commander = 1, bmcode = 1 }:change {
        energymake = scale(5),
        metalmake = scale(5),
      },
    },
  }
end
