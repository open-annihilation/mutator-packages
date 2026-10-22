function mutate(ctx)
  local side = ctx.options.side

  local function sided(needs)
    if side == "arm" then
      needs.side = is("ARM")
    elseif side == "core" then
      needs.side = is("CORE")
    end
    return needs
  end

  return {
    rules = {
      where(sided { stealth = not_(is("1")) }):change {
        stealth = set(1),
      },
      where(sided {
        bmcode = 1,
        maxvelocity = range(0.01, 10000),
        canfly = 1,
        category = has("CONSTR"),
      }):change {
        cloakcost = set(10),
        cloakcostmoving = set(50),
        mincloakdistance = set(1),
        init_cloaked = set(0),
      },
    },
  }
end
