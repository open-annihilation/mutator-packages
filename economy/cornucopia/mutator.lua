function mutate(ctx)
  return {
    rules = {
      where { energymake = range(0, 1e11) }:change { energymake = scale(2) },
      where { energyuse = range(-1e11, 0) }:change { energyuse = scale(2) },
      where { windgenerator = range(0, 1e11) }:change { windgenerator = scale(2) },
      where { metalmake = range(0, 1e11) }:change { metalmake = scale(2) },
      where { makesmetal = range(0, 1e11) }:change { makesmetal = scale(2) },
      where { extractsmetal = range(0, 1e11) }:change { extractsmetal = scale(2) },
      where { tidalgenerator = range(0, 1e11) }:change { tidalgenerator = scale(2) },
    },
  }
end
