function mutate(ctx)
  return {
    rules = {
      all():change { shootme = set(1) },
    },
  }
end
