function mutate(ctx)
  return {
    rules = {
      named("TAWF004"):change {
        MaxWaterDepth = 255,
        Waterline = 255,
        NoShadow = 1,
        BuildTime = 371487,
      },
    },
  }
end
