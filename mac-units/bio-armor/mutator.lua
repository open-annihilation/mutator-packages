function mutate(ctx)
  local side = ctx.options.side
  local needs = {
    healtime = not_(range(1, 9999)),
  }
  if side == "arm" then
    needs.side = is("ARM")
  elseif side == "core" then
    needs.side = is("CORE")
  end
  return {
    rules = {
      where(needs):change {
        healtime = set(100),
      },
    },
  }
end
