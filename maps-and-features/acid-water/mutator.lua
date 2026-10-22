function mutate(ctx)
  local brackish = ctx.options.strength == "brackish"
  return {
    maps = function(map, ctx)
      local header = map.header
      -- Acid is lava off and water that does damage. The planet name is
      -- left out: some map makers never set it.
      if header.lavaworld ~= 0 or header.waterdoesdamage ~= 1 then
        return
      end
      if brackish then
        header.waterdoesdamage = 0
        header.waterdamage = 0
        return
      end
      local damage = header.waterdamage
      if type(damage) ~= "number" then
        return
      end
      -- A tenth of a whole number can be fractional. Water damage is stored
      -- as a whole number, so the tenth is floored.
      header.waterdamage = math.floor(damage / 10)
    end,
  }
end
