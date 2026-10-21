function mutate(ctx)
  return {
    rules = {
      where {
        bmcode = 0,
        builder = 0,
        maxslope = range(0, 32),
      }:change {
        maxslope = set(33),
      },
    },
  }
end
