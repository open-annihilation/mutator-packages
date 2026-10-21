function mutate(ctx)
  return {
    rules = {
      named("CORFAST"):change {
        weapon1 = set("CORE_LIGHTLASER"),
      },
    },
  }
end
