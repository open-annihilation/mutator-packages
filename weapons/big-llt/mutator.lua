function mutate(ctx)
  return {
    rules = {
      -- Category, bad-target lists and the name LLT are Uberhack's, so they stay.
      named("ARMLLT"):change {
        buildcostenergy = set(1837),
        buildcostmetal = set(331),
        buildtime = set(8662),
        canguard = set(1),
        maxdamage = set(1030),
        weapon1 = set("ADV_DECKLASER"),
      },
      named("CORLLT"):change {
        buildcostenergy = set(2052),
        buildcostmetal = set(334),
        buildtime = set(8724),
        canguard = set(1),
        maxdamage = set(1110),
        sightdistance = set(380),
        weapon1 = set("ADV_DECKLASER"),
      },
    },
  }
end
