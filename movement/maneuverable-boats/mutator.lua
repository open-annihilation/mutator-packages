function mutate(ctx)
  return {
    rules = {
      where {
        bmcode = 1,
        movementclass = has("boat"),
        maxvelocity = range(0.01, 10000),
      }:change {
        brakerate = scale(2),
        acceleration = scale(2),
        turnrate = scale(4),
      },
    },
  }
end
