function mutate(ctx)
  local side = ctx.options.side
  local needs = {
    bmcode = 0,
    builder = 1,
    workertime = range(1, 10000),
  }
  if side == "arm" then
    needs.side = is("ARM")
  elseif side == "core" then
    needs.side = is("CORE")
  end
  return {
    rules = {
      where(needs):change {
        workertime = scale(3, 0, 2000),
      },
    },
  }
end
