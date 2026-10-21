function mutate(ctx)
  return {
    rules = {
      where { bmcode = 1, commander = not_(range(1, 1)) }:change {
        healtime = set(40),
      },
    },
  }
end
