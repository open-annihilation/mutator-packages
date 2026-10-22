function mutate(ctx)
  return {
    rules = {
      all():change { hidedamage = set(1) },
    },
  }
end
