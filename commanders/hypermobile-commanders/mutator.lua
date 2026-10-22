function mutate(ctx)
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        maxvelocity = scale(3),
        turnrate = scale(3),
        brakerate = scale(9),
        acceleration = scale(9),
      },
    },
  }
end
