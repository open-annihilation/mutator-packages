function mutate(ctx)
  local side = ctx.options.side
  -- The originals exclude ARMCOM and CORCOM by name. A commander flag is
  -- the same set on 3.1c. The decoys have no commander flag, so they stay in.
  local needs = {
    bmcode = 1,
    builder = 1,
    workertime = range(1, 10000),
    commander = not_(range(1, 1)),
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
