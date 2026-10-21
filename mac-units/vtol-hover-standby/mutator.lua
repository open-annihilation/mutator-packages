function mutate(ctx)
  return {
    rules = {
      where {
        bmcode = 1,
        maxvelocity = range(0.00001, 10000),
        canfly = 1,
        category = has("VTOL"),
        defaultmissiontype = is("VTOL_Standby"),
      }:change {
        defaultmissiontype = set("Standby"),
      },
    },
  }
end
