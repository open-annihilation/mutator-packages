function mutate(ctx)
  return {
    rules = {
      named("ARMADVSOL"):change {
        MaxSlope = 30,
        EnergyUse = -150,
        ai_weight = "weight ARMADVSOL 0.5",
      },
    },
  }
end
