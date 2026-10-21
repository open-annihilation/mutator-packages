function mutate(ctx)
  return {
    files = { add = { "files" } },
    rules = {
      -- Uberhack's category stays. The Arm ship's first two guns stay the base game's.
      named("ARMBATS"):change {
        acceleration = set(0.01),
        brakerate = set(0.025),
        maxdamage = set(8064),
        weapon3 = set("ARM_LIGHTLASER"),
        wspe_badtargetcategory = set("ANTILASER"),
      },
      -- The script this package ships aims weapon 1 and weapon 2 in this order.
      -- Uberhack's category and ATOMIC_BLASTSML stay out.
      named("CORBATS"):change {
        acceleration = set(0.011),
        brakerate = set(0.02),
        maxdamage = set(8364),
        weapon1 = set("COR_BATS"),
        weapon2 = set("CORE_BATSLASER"),
        weapon3 = set("CORE_LIGHTLASER"),
        wsec_badtargetcategory = set("ANTILASER"),
        wspe_badtargetcategory = set("ANTILASER"),
      },
    },
  }
end
