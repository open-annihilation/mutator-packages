function mutate(ctx)
  return {
    rules = {
      named("ARMHVP"):change {
        WorkerTime = 400,
      },
    },
  }
end
