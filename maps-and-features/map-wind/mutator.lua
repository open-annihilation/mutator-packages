local function clamp(value, low, high)
  if value < low then
    return low
  end
  if value > high then
    return high
  end
  return value
end

-- Half again, then the originals' clamps, which raise a calm map. The
-- product is floored because the wind speeds are whole numbers.
local function raised(value, low, high)
  if type(value) ~= "number" then
    return nil
  end
  return clamp(math.floor(value * 1.5), low, high)
end

function mutate(ctx)
  if ctx.options.wind == "calm" then
    return {
      maps = {
        where {}:change {
          minwindspeed = 0,
          maxwindspeed = 0,
        },
      },
    }
  end
  return {
    maps = function(map, ctx)
      local header = map.header
      local minimum = raised(header.minwindspeed, 4000, 9000)
      local maximum = raised(header.maxwindspeed, 5000, 10000)
      if minimum ~= nil then
        header.minwindspeed = minimum
      end
      if maximum ~= nil then
        header.maxwindspeed = maximum
      end
    end,
  }
end
