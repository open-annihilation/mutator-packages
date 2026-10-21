function mutate(ctx)
  return {
    rules = {
      named("ARMSPY"):change { stealth = set(1) },
      named("CORSPY"):change { stealth = set(1) },
    },
  }
end
