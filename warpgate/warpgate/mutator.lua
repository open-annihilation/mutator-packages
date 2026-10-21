-- Arrival chooses one archive's files. 4.1's side rule runs for every arrival.
-- The originals' download files say MENU=2 BUTTON=0 for ARMCOM and BUTTON=1
-- for CORCOM. A player's page is MENU minus 1 and a slot is BUTTON plus 1,
-- so those places are page 1 slot 1 and page 1 slot 2. Slot 0 is not a place
-- this hook can name. The gates have no build page of their own, so the
-- slots stay where they are asked.
-- Gates have BMCode 0, so the commander selector does not treat them as
-- commanders. near-twin and chosen-twin clear the commander flag. TwinTarget
-- shipped no such line; TwinComm's line was a plain assignment.
local function offer(menus, gate)
  menus:add(gate, "ARMCOM", { page = 1, slot = 1 })
  menus:add(gate, "CORCOM", { page = 1, slot = 2 })
end

function mutate(ctx)
  local arrival = ctx.options.arrival
  local buildtime = 100
  if arrival == "at-gate" then
    buildtime = 1
  end
  local commanders = {
    buildcostenergy = lock(0),
    buildcostmetal = lock(0),
    buildtime = lock(buildtime),
    extractsmetal = lock(0.001),
  }
  if arrival == "near-twin" or arrival == "chosen-twin" then
    commanders.commander = set(0)
  end
  local plan = {
    files = { add = { "files/" .. arrival } },
    rules = {
      where { commander = 1, bmcode = 1 }:change(commanders),
      all():change { side = lock(0) },
    },
    units = function(units, ctx)
      if units.ARMCOM == nil or units.CORCOM == nil then
        ctx.incompatible("Warp Gate needs the Arm and Core commanders, ARMCOM and CORCOM")
        return
      end
      ctx.sides:each(function(side)
        local commander = side.commander
        if commander == nil then
          return
        end
        local folded = commander:lower()
        if folded == "armcom" then
          side.commander = "CORGATE"
        elseif folded == "corcom" then
          side.commander = "ARMGATE"
        end
      end)
    end,
    menus = function(menus, ctx)
      offer(menus, "ARMGATE")
      offer(menus, "CORGATE")
    end,
  }
  return plan
end
