function mutate(ctx)
  return {
    rules = {
      named("ARMPEEP"):change {
        SightDistance = 1600,
        RadarDistance = 0,
        MaxVelocity = lock(24),
        BrakeRate = lock(13.5),
        Acceleration = lock(4),
        Turnrate = lock(1600),
        BankScale = lock(4),
        CruiseAlt = lock(2000),
        DefaultMissionType = "Standby",
        AltFromSeaLevel = lock(1),
      },
    },
  }
end
