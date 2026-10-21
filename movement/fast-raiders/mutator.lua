function mutate(ctx)
  return {
    rules = {
      -- Named units. The speed test keeps the absolute 1.6 from slowing a faster one.
      where { unitname = is("ARMSTUMP"), maxvelocity = range(0, 1.6) }:change {
        maxvelocity = set(1.6),
      },
      where { unitname = is("CORRAID"), maxvelocity = range(0, 1.6) }:change {
        maxvelocity = set(1.6),
      },
    },
  }
end
