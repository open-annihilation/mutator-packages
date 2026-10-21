function mutate(ctx)
  return {
    maps = {
      where { lavaworld = 1 }:change {
        lavaworld = 0,
        waterdoesdamage = 1,
        waterdamage = 30,
        tidalstrength = 0,
      },
    },
  }
end
