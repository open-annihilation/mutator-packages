function mutate(ctx)
  return {
    rules = {
      named("ARMFAST"):change {
        weapon1 = set("EMG"),
      },
    },
  }
end
