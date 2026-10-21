function mutate(ctx)
  return {
    rules = {
      named("ARMCOM"):change { weapon1 = set("LIGHTNING") },
      named("CORCOM"):change { weapon1 = set("FLAMETHROWER") },
    },
  }
end
