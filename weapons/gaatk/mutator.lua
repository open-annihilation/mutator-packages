function mutate(ctx)
  return {
    rules = {
      named("CORAK"):change {
        maxdamage = set(850),
        weapon1 = set("CORE_LASERH1"),
      },
    },
  }
end
