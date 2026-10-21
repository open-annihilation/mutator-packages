function mutate(ctx)
  return {
    -- A plan has no features hook. The units hook writes the features collection.
    units = function(units, ctx)
      ctx.features:where {
        metal = range(1, 999),
        damage = 32009,
        indestructible = 1,
      }:set { metal = "255" }
    end,
  }
end
