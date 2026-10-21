function mutate(ctx)
  return {
    rules = {
      on("weapons", "tdf"):change { range = scale(2, 0, 32000) },
    },
  }
end
