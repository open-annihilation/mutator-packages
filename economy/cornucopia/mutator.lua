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
      where(sided { energymake = range(0, 1e11) }):change { energymake = scale(2) },
      where(sided { energyuse = range(-1e11, 0) }):change { energyuse = scale(2) },
      where(sided { windgenerator = range(0, 1e11) }):change { windgenerator = scale(2) },
      where(sided { metalmake = range(0, 1e11) }):change { metalmake = scale(2) },
      where(sided { makesmetal = range(0, 1e11) }):change { makesmetal = scale(2) },
      where(sided { extractsmetal = range(0, 1e11) }):change { extractsmetal = scale(2) },
      where(sided { tidalgenerator = range(0, 1e11) }):change { tidalgenerator = scale(2) },
    },
  }
end
