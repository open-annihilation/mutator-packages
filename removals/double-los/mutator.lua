function mutate(ctx)
  return {
    files = { add = { "files" } },
    rules = {
      all():change {
        sightdistance = scale(2),
        radardistance = scale(1.5),
      },
    },
  }
end
