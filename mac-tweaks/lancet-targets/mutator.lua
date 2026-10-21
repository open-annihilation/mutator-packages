function mutate(ctx)
  return {
    rules = {
      named("ARMLANCE"):change {
        BadTargetCategory = "NOTSUB",
      },
    },
  }
end
