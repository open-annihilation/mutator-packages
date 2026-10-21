function mutate(ctx)
  return {
    rules = {
      where { commander = 1, bmcode = 1 }:change {
        istargetingupgrade = set(1),
      },
    },
  }
end
