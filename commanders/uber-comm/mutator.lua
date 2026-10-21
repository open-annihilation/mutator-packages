function mutate(ctx)
  local lite = ctx.options.strength == "lite"
  local health = lite and 1.5 or 2
  local worker = lite and 3 or 6
  local move = lite and 1.5 or 2
  local accel = lite and 2.25 or 4
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        maxdamage = scale(health, 1, 29900),
        builddistance = scale(2),
        workertime = scale(worker),
        maxvelocity = scale(move),
        turnrate = scale(move),
        brakerate = scale(accel),
        acceleration = scale(accel),
      },
    },
  }
end
