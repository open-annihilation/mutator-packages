function mutate(ctx)
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        metalstorage = set(1900000),
        energystorage = set(1900000),
      },
    },
  }
end
