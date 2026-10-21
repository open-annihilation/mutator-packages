function mutate(ctx)
  local side = ctx.options.side
  local rules = {}

  local function add(side_name, speed, accel)
    rules[#rules + 1] = where {
      commander = 1,
      bmcode = 1,
      side = is(side_name),
    }:change {
      maxdamage = scale(1.5, 1, 29900),
      builddistance = scale(2),
      workertime = scale(3),
      turnrate = scale(5, 0, 29900),
      maxvelocity = scale(speed, 0, 30),
      brakerate = scale(accel),
      acceleration = scale(accel),
    }
  end

  -- Both texts promise the same percentages. The copies use different speed
  -- factors. Side all is both blocks, so another side's commander is left
  -- alone, as the two originals leave it.
  if side ~= "core" then
    add("ARM", 7, 49)
  end
  if side ~= "arm" then
    add("CORE", 5, 25)
  end
  return { rules = rules }
end
