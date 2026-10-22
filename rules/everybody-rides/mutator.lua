function mutate(ctx)
  return {
    rules = {
      where { cantbetransported = is("1") }:change {
        cantbetransported = remove(),
      },
    },
  }
end
