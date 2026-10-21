function mutate(ctx)
  return {
    rules = {
      named("ARMLLT"):change {
        weapon1 = set("ARMSCORP_WEAPON"),
      },
    },
    units = function(units, ctx)
      if ctx.weapons["ARMSCORP_WEAPON"] == nil then
        ctx.incompatible("Better L.L.T needs Core Contingency's Scorpion weapon")
      end
    end,
  }
end
