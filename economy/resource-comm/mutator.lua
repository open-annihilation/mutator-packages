function mutate(ctx)
  local levels = {
    standard = {
      energymake = 1000,
      energystorage = 3000,
      metalmake = 50,
      metalstorage = 1000,
      builddistance = 1.5,
      workertime = 2,
    },
    deluxe = {
      energymake = 4000,
      energystorage = 12000,
      metalmake = 200,
      metalstorage = 4000,
      builddistance = 2,
      workertime = 3,
    },
    both = {
      energymake = 2500,
      energystorage = 7500,
      metalmake = 125,
      metalstorage = 2500,
      builddistance = 3,
      workertime = 6,
    },
  }
  local level = levels[ctx.options.level]
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        energymake = lock(level.energymake),
        energystorage = lock(level.energystorage),
        metalmake = lock(level.metalmake),
        metalstorage = lock(level.metalstorage),
        builddistance = scale(level.builddistance),
        workertime = scale(level.workertime),
      },
    },
  }
end
