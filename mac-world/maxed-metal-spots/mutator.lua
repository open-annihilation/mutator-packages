function mutate(ctx)
  return {
    features = function(features, ctx)
      features:where {
        metal = range(1, 999),
        damage = 32009,
        indestructible = 1,
      }:set { metal = "255" }
    end,
  }
end
