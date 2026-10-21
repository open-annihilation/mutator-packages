function mutate(ctx)
  local function sided(needs)
    if ctx.options.side == "arm" then
      needs.side = is("ARM")
    elseif ctx.options.side == "core" then
      needs.side = is("CORE")
    end
    return needs
  end

  return {
    rules = {
      where(sided { metalstorage = range(300, 1e7) }):change { metalstorage = scale(ctx.options.factor) },
      where(sided { energystorage = range(300, 1e7) }):change { energystorage = scale(ctx.options.factor) },
    },
  }
end
