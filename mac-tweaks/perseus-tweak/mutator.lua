function mutate(ctx)
  return {
    rules = {
      named("ARMPERS"):change {
        SightDistance = 700,
        ManeuverLeashLength = 1280,
        Weapon1 = "SAM_weapon",
      },
    },
  }
end
