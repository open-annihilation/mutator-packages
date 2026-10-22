function mutate(ctx)
  return {
    rules = {
      where { canload = 1 }:change { isairbase = set(1) },
    },
  }
end
