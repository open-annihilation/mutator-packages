function mutate(ctx)
  return {
    rules = {
      named("ARMSPID"):change {
        maxdamage = set(5000),
        weapon1 = set("ARMSCORP_WEAPON"),
      },
    },
    units = function(units, ctx)
      if ctx.weapons["ARMSCORP_WEAPON"] == nil then
        ctx.incompatible("Terrain Terror needs Core Contingency's Scorpion weapon")
      end
    end,
  }
end
