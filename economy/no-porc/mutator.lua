function mutate(ctx)
  return {
    rules = {
      where { metalmake = range(0.01, 10) }:change { metalmake = remove() },
    },
    units = function(units, ctx)
      units:where { makesmetal = range(0.1, 99) }:remove()
    end,
  }
end
