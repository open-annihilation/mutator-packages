function mutate(ctx)
  return {
    rules = {
      on("weapons", "tdf"):change { areaofeffect = scale(2) },
    },
  }
end
