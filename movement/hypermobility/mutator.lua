function mutate(ctx)
  return {
    rules = {
      where { bmcode = 1, canfly = not_(range(1, 1)), maxvelocity = range(0.01, 100) }:change {
        maxvelocity = scale(2),
        brakerate = scale(4),
        acceleration = scale(4),
        turnrate = scale(2),
      },
    },
  }
end
