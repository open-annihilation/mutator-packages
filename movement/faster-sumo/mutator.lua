function mutate(ctx)
  return {
    rules = {
      named("CORSUMO"):change {
        maxvelocity = set(5),
        turnrate = set(666),
      },
    },
  }
end
