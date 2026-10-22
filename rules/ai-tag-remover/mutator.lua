function mutate(ctx)
  return {
    rules = {
      where { ai_weight = has("") }:change { ai_weight = remove() },
      where { ai_limit = has("") }:change { ai_limit = remove() },
    },
  }
end
