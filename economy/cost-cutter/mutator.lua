function mutate(ctx)
  return {
    rules = {
      all():change {
        buildcostmetal = scale(0.5),
        buildcostenergy = scale(0.5),
      },
    },
  }
end
