function mutate(ctx)
  return {
    rules = {
      named("CORGATE"):change {
        energymake = set(1000),
        energystorage = set(3000),
        metalmake = set(20),
        metalstorage = set(1000),
      },
      named("ARMGATE"):change {
        energymake = set(1500),
        energystorage = set(9000),
        metalmake = set(30),
        metalstorage = set(3000),
      },
    },
  }
end
