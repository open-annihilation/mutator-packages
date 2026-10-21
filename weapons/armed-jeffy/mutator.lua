function mutate(ctx)
  return {
    rules = {
      named("ARMFAV"):change {
        maxdamage = set(2000),
        weapon1 = set("ARMFIXED_GUN"),
      },
    },
  }
end
