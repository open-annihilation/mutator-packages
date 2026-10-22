function mutate(ctx)
  return {
    rules = {
      where { category = has("KBOT"), bmcode = 1, builder = 1 }:change {
        maxvelocity = scale(1.75),
        acceleration = scale(3),
        brakerate = scale(3),
      },
    },
  }
end
