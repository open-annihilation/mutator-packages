function mutate(ctx)
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        weapon1 = set("ARM_TOTAL_ANNIHILATOR"),
      },
    },
  }
end
