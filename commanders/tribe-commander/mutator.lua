function mutate(ctx)
  return {
    files = { add = { "files" } },
    rules = {
      named("ARMCOM"):change { objectname = set("TRIBCOM") },
    },
  }
end
