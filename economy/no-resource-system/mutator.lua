function mutate(ctx)
  return {
    rules = {
      where { name = has("AI ") }:change {
        workertime = scale(1.3),
        buildtime = scale(0.75),
      },
      where { energyuse = range(0.0001, 400000) }:change { energyuse = remove() },
      where { cloakcost = not_(absent()) }:change {
        cloakcost = remove(),
        mincloakdistance = remove(),
        cloakcostmoving = remove(),
        stealth = set(1),
      },
      all():change {
        buildcostenergy = remove(),
        buildcostmetal = remove(),
        metalmake = set(20),
        energymake = set(1000),
        energystorage = set(1000),
        metalstorage = set(20),
      },
    },
    units = function(units, ctx)
      units:where { name = has("Fusion Reactor") }:remove()
      units:where { description = is("Highly unstable Rock to Metal subatomic converter") }:remove()
      units:where { makesmetal = range(0.1, 99), weapon1 = absent() }:remove()
      units:where { tedclass = "METAL", weapon1 = absent() }:remove()
      units:where { tedclass = "ENERGY", weapon1 = absent() }:remove()
    end,
  }
end
