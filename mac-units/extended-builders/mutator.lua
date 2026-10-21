function mutate(ctx)
  local side = ctx.options.side

  local function ground_builders()
    local needs = {
      bmcode = 1,
      builder = 1,
      canfly = not_(is("1")),
    }
    if side == "arm" then
      needs.side = is("ARM")
    elseif side == "core" then
      needs.side = is("CORE")
    end
    return needs
  end

  -- The originals did not test builder, so they doubled every ground unit's
  -- sight, and they scaled ManueverLeashLength, which is not a field. Each
  -- change is its own block. The leash uses the spelling the game reads.
  return {
    rules = {
      where(ground_builders()):change { builddistance = scale(2) },
      where(ground_builders()):change { maneuverleashlength = scale(2) },
      where(ground_builders()):change { sightdistance = scale(2) },
    },
  }
end
