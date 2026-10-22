function mutate(ctx)
  return {
    maps = {
      where {
        planet = not_(is("Lava")),
        lavaworld = 1,
        waterdoesdamage = 0,
        waterdamage = 100,
        nosealeveltrigger = 1,
      }:change {
        lavaworld = 0,
        waterdamage = 0,
        nosealeveltrigger = 0,
      },
    },
  }
end
