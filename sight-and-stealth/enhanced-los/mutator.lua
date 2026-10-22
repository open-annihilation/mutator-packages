function mutate(ctx)
  local sight = ctx.options.sight
  local change
  if sight == "1000" then
    change = { sightdistance = set(1000) }
  elseif sight == "1600" then
    change = { sightdistance = set(1600) }
  else
    change = { sightdistance = scale(2) }
  end
  -- LOS_1600's table ships for every sight value. It allows sight out to
  -- 1600. That mutator did not itself change any unit's sight.
  return {
    files = { add = { "files" } },
    rules = {
      all():change(change),
    },
  }
end
