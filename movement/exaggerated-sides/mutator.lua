function mutate(ctx)
  return {
    rules = {
      -- The original tested maxvelocity from 0 to 0.001, which matches nothing.
      where {
        bmcode = 1,
        side = is("CORE"),
        maxvelocity = not_(range(0, 0.001)),
      }:change {
        maxdamage = scale(1.2),
        maxvelocity = scale(0.85),
        turnrate = scale(0.85),
        brakerate = scale(0.73),
        acceleration = scale(0.73),
      },
      where {
        bmcode = 1,
        side = is("ARM"),
        maxvelocity = not_(range(0, 0.001)),
      }:change {
        maxdamage = scale(0.85),
        maxvelocity = scale(1.2),
        turnrate = scale(1.2),
        brakerate = scale(1.44),
        acceleration = scale(1.44),
      },
    },
  }
end
