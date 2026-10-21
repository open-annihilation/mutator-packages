function mutate(ctx)
  local distance = ctx.options.radar == "none" and 0 or 2880
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        radardistance = set(distance),
      },
    },
  }
end
