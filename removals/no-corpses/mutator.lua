function mutate(ctx)
  return {
    rules = {
      where { isfeature = false }:change { corpse = remove() },
    },
  }
end
