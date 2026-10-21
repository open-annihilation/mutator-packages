function mutate(ctx)
  local side = ctx.options.side
  local transportable = ctx.options.transportable == "yes"
  local rules = {}

  local function add(ted)
    local needs = {
      bmcode = 0,
      builder = 0,
      tedclass = is(ted),
    }
    if side == "arm" then
      needs.side = is("ARM")
    elseif side == "core" then
      needs.side = is("CORE")
    end
    local changes = {
      selfdestructcountdown = set(0),
      selfdestructas = set("NOWEAPON"),
    }
    -- The Arm original also made these structures transportable.
    -- The Core original did not.
    if transportable then
      changes.canbetransported = set(1)
      changes.cantbetransported = set(0)
    end
    rules[#rules + 1] = where(needs):change(changes)
  end

  add("METAL")
  add("ENERGY")
  return { rules = rules }
end
