function mutate(ctx)
  return {
    rules = {
      where { builder = 1, bmcode = 1, maxvelocity = range(0.01, 100) }:change {
        maxvelocity = scale(3),
        brakerate = scale(9),
        acceleration = scale(9),
        turnrate = scale(3),
      },
    },
  }
end
