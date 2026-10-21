function mutate(ctx)
  return {
    rules = {
      named("CORGATE"):change {
        radardistance = lock(13000),
        sonardistance = lock(13000),
      },
      named("ARMGATE"):change {
        radardistance = lock(13000),
        sonardistance = lock(13000),
      },
    },
  }
end
