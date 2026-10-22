function mutate(ctx)
  return {
    rules = {
      on("weapons", "tdf"):change { reloadtime = scale(2) },
    },
  }
end
