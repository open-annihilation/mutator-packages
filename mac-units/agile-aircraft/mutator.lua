function mutate(ctx)
  local side = ctx.options.side
  local version = ctx.options.version

  local function aircraft()
    local needs = {
      bmcode = 1,
      canfly = 1,
      maxvelocity = range(0.01, 10000),
    }
    if side == "arm" then
      needs.side = is("ARM")
    elseif side == "core" then
      needs.side = is("CORE")
    end
    return needs
  end

  local function classic_changes()
    return {
      maxvelocity = scale(1.5, 0, 30),
      brakerate = scale(2.25),
      acceleration = scale(2.25),
      turnrate = scale(2, 0, 29900),
      bankscale = scale(2),
    }
  end

  if version == "classic" then
    return {
      rules = {
        where(aircraft()):change(classic_changes()),
      },
    }
  end

  -- Agile Aircraft II's first group also needed WorkerTime="", which no
  -- aircraft meets, so that group changed nothing. Select the aircraft
  -- that do not build. HELPER is Switeck's helper plane. Core's copy
  -- omitted that name; 3.1c has no such unit, and this version always
  -- leaves it alone.
  local non_builders = aircraft()
  non_builders.builder = not_(range(1, 1))
  local builders = aircraft()
  builders.builder = 1
  builders.workertime = range(1, 10000)
  builders.unitname = not_(is("HELPER"))
  return {
    rules = {
      where(non_builders):change(classic_changes()),
      where(builders):change {
        maxvelocity = scale(2, 0, 15),
        brakerate = scale(4, 0, 5),
        acceleration = scale(10, 0, 5),
        turnrate = scale(4, 0, 400),
        bankscale = scale(2),
      },
    },
  }
end
