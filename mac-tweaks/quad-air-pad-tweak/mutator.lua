function mutate(ctx)
  return {
    rules = {
      named("QuadAirPad"):change {
        MaxSlope = 20,
        WorkerTime = 1000,
      },
    },
  }
end
