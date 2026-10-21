function mutate(ctx)
  return {
    rules = {
      where { canhover = 1 }:change {
        bankscale = set(0.7),
        maxvelocity = scale(2.5),
        brakerate = scale(2.5),
        acceleration = scale(2.5),
        turnrate = scale(6),
        ovradjust = set(1),
      },
    },
  }
end
