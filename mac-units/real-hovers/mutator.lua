function mutate(ctx)
  -- CruiseAlt=!0,9999 was meant as "has no cruise altitude". A missing key
  -- reads as 0, so that range matches nothing. absent() selects the missing key.
  return {
    rules = {
      where {
        canhover = 1,
        cruisealt = absent(),
        category = has("NOTAIR"),
      }:change {
        canhover = remove(),
        movementclass = remove(),
        canfly = set(1),
        tedclass = set("VTOL"),
        cruisealt = set(0.5),
        altfromsealevel = set(0),
        bankscale = set(0.5),
        maxvelocity = scale(2.5),
        brakerate = scale(2.5),
        acceleration = scale(2.5),
        turnrate = scale(1.5),
        defaultmissiontype = set("Standby"),
        ovradjust = set(1),
      },
    },
  }
end
