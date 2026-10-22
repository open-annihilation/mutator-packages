-- The originals' bare words, in the order their blocks write them.
local function open_up(feature)
  feature.seqnamereclamate = "tree1reclamate"
  feature.metal = "100"
  feature.seqnamedie = "widgetboom01"
  feature.featuredead = nil
  feature.flamable = "0"
  feature.reclaimable = "1"
  feature.featurereclamate = nil
  feature.reproduce = "0"
  feature.reproducearea = "6"
  feature.indestructible = nil
  feature.permanent = nil
  feature.nodisplayinfo = nil
  feature.damage = "300"
  feature.hitdensity = "100"
end

function mutate(ctx)
  local monorails = ctx.options.which == "monorails"
  return {
    features = function(features, ctx)
      local chosen
      if monorails then
        chosen = features:where {
          description = has("Monorail"),
          indestructible = 1,
        }
      else
        chosen = features:where {
          indestructible = "1",
          geothermal = not_(is("1")),
          metal = not_(range(1, 999)),
        }
      end
      chosen:each(open_up)
    end,
  }
end
