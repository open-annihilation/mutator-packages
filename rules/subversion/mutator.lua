function mutate(ctx)
  return {
    rules = {
      where {
        canreclamate = 1,
        builder = 1,
        bmcode = 1,
        canfly = false,
      }:change { cancapture = set(1) },
    },
  }
end
