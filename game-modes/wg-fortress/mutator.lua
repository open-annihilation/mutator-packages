-- A later change from this same mutator still applies to a field it locked.
-- The originals locked the gates and then set every unit to 0, and TA's lock
-- kept the gates. Here the zeros come first and the locks after, so the gates
-- keep the income this option names. Easy-gate income is six fifths of the
-- Normal gate, in whole numbers, which is 1.2 with no rounding.
-- MakesEnergy is not a field and is left out. A unit that writes no energyuse
-- reads 0, so it is inside the band.
function mutate(ctx)
  local income = math.tointeger(ctx.options.income)
  local metal = income // 50
  local easy_energy = income * 6 // 5
  local easy_metal = income * 6 // 250
  return {
    rules = {
      all():change {
        energymake = set(0),
        energystorage = set(0),
        metalmake = set(0),
        makesmetal = set(0),
        metalstorage = set(0),
        extractsmetal = set(0),
        tidalgenerator = set(0),
        windgenerator = set(0),
      },
      where { energyuse = range(-1e11, 0) }:change { energyuse = set(0) },
      named("CORGATE"):change {
        energymake = lock(income),
        metalmake = lock(metal),
        energystorage = lock(1000000000),
        metalstorage = lock(1000000000),
      },
      named("ARMGATE"):change {
        energymake = lock(easy_energy),
        metalmake = lock(easy_metal),
        energystorage = lock(1000000000),
        metalstorage = lock(1000000000),
      },
    },
  }
end
