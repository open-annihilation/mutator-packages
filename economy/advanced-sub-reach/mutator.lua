function mutate(ctx)
  return {
    rules = {
      named("ARMACSUB"):change { builddistance = scale(1.5) },
      named("CORACSUB"):change { builddistance = scale(1.5) },
    },
  }
end
