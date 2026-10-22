function mutate(ctx)
  return {
    rules = {
      where { bmcode = 1, canfly = not_(range(1, 1)), maxvelocity = range(0.01, 100) }:change {
        maxvelocity = scale(0.5),
        brakerate = scale(0.75),
        acceleration = scale(0.75),
        turnrate = scale(0.5),
      },
    },
  }
end
