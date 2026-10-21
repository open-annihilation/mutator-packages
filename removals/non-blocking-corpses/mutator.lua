-- A plan has no features hook. The units hook writes the features collection.
-- A wreck is a feature some unit names as its corpse, then each feature that
-- wreck turns into, followed to the end of the chain.
function mutate(ctx)
  return {
    units = function(units, ctx)
      local features = ctx.features
      local seen = {}

      local function visit(name)
        if type(name) ~= "string" or name == "" then
          return
        end
        local key = string.lower(name)
        if seen[key] then
          return
        end
        seen[key] = true
        local feature = features[name]
        if feature == nil then
          return
        end
        local next_name = feature.featuredead
        feature.blocking = 0
        visit(next_name)
      end

      for _, unit in pairs(units) do
        -- A unit that is itself a feature (dragon's teeth, walls) leaves that
        -- feature, not a wreck, so it keeps blocking.
        if unit.isfeature ~= true and unit.isfeature ~= 1 then
          visit(unit.corpse)
        end
      end
    end,
  }
end
