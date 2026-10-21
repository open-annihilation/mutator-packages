function mutate(ctx)
  return {
    rules = {
      -- The original used two blocks for this one unit.
      named("ARMFAST"):change {
        maxdamage = set(5000),
        weapon1 = set("ARM_TOTAL_ANNIHILATOR"),
      },
    },
  }
end
