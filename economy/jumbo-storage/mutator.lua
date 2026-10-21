function mutate(ctx)
  return {
    rules = {
      where { metalstorage = range(300, 1e7) }:change { metalstorage = scale(ctx.options.factor) },
      where { energystorage = range(300, 1e7) }:change { energystorage = scale(ctx.options.factor) },
    },
  }
end
