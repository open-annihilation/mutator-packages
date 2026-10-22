function mutate(ctx)
  return {
    rules = {
      -- One selector, in place of multiply-by-1.2 and then revert.
      where {
        category = has("LEVEL2"),
        bmcode = 1,
        canfly = not_(range(1, 1)),
        floater = not_(range(1, 1)),
        canhover = not_(range(1, 1)),
        tedclass = not_(is("WATER")),
      }:change {
        maxdamage = scale(1.2),
      },
    },
  }
end
