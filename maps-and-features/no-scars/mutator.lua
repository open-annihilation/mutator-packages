function mutate(ctx)
  return {
    features = function(features, ctx)
      features:each(function(feature)
        feature.featuredead = nil
        feature.featurereclamate = nil
      end)
    end,
  }
end
