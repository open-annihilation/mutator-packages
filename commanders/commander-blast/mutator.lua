function mutate(ctx)
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        explodeas = set("ATOMIC_BLAST"),
        selfdestructas = set("ATOMIC_BLAST"),
      },
    },
  }
end
