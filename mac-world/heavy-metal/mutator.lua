function mutate(ctx)
  local metal = 32
  if ctx.options.level == 2 then
    metal = 128
  elseif ctx.options.level == 3 then
    metal = 255
  end
  return {
    maps = {
      -- A schema key in the list form is written on every schema. Surface
      -- metal lives there. MohoMetal is not a key the map view offers.
      where {}:change { surfacemetal = metal },
    },
  }
end
