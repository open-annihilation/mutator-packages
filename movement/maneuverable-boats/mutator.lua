function mutate(ctx)
  local needs = {
    bmcode = 1,
    movementclass = has("boat"),
    maxvelocity = range(0.01, 10000),
  }
  if ctx.options.side == "arm" then
    needs.side = is("ARM")
  elseif ctx.options.side == "core" then
    needs.side = is("CORE")
  end
  return {
    rules = {
      where(needs):change {
        brakerate = scale(2),
        acceleration = scale(2),
        -- 3.1c's fastest boat turns at 911, so times four stays under 29900.
        turnrate = scale(4, 0, 29900),
      },
    },
  }
end
