function mutate(ctx)
  return {
    rules = {
      where { bmcode = 1, maxvelocity = range(0.01, 100) }:change {
        maxvelocity = scale(3),
        turnrate = scale(3),
        brakerate = scale(9),
        acceleration = scale(9),
      },
      -- reload names no weapon field. reloadtime is the fire rate.
      on("weapons", "tdf"):where { range = not_(range(32000, 32000)) }:change {
        ["<AllDepth2>"] = scale(0.5),
        range = scale(0.3333),
        areaofeffect = scale(0.25),
        weaponvelocity = scale(2),
        energypershot = scale(0.5),
        metalpershot = scale(0.5),
        reloadtime = scale(0.5),
      },
    },
  }
end
