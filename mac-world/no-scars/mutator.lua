function mutate(ctx)
  return {
    units = function(units, ctx)
      ctx.features:each(function(feature)
        feature.featuredead = nil
        feature.featurereclamate = nil
      end)
    end,
  }
end
