function mutate(ctx)
  return {
    rules = {
      where { radardistance = range(1, 99999) }:change {
        radardistance = scale(10),
      },
      where { sonardistance = range(1, 99999) }:change {
        sonardistance = scale(10),
      },
    },
  }
end
