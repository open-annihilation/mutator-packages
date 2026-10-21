function mutate(ctx)
  local changes = {
    buildcostmetal = scale(0.5),
    buildcostenergy = scale(0.5),
  }
  local rule
  if ctx.options.side == "arm" then
    rule = where { side = is("ARM") }:change(changes)
  elseif ctx.options.side == "core" then
    rule = where { side = is("CORE") }:change(changes)
  else
    rule = all():change(changes)
  end
  return {
    rules = { rule },
  }
end
