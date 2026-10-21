function mutate(ctx)
  return {
    rules = {
      named("ARMDECOM"):change { workertime = set(999) },
    },
  }
end
