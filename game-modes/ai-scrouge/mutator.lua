-- Warp Gate locks side 0 before these records exist, and a later mutator's
-- rule cannot change that lock. Nothing averages. These rules lock the
-- Scrouge's own units at side 0. The units hook then writes side 10000 on
-- every other commander Warp Gate marked. The mark is metal extraction
-- 0.001 with build code 1, not the commander flag: the twin arrivals clear
-- that flag before this hook runs. A hook may write a field an earlier
-- mutator locked.
-- The six download files name no MENU and no BUTTON. The game reads both as
-- 0, and a page is MENU minus 1, so those entries link no page. The first
-- page this hook can write is 1, which stores MENU=2. Warp Gate already
-- offers ARMCOM and CORCOM on page 1 slots 1 and 2, so each gate offers
-- SCROUGE at slot 3. The Scrouge's own list is the order in Scrouge1,
-- Scrouge2, Scrouge3, ScrougeArm and ScrougeCore, without SCRGGEO, six
-- buttons to a page from page 1 slot 1. The guardian builds nothing.
local offered = {
  "SCRGMEX", "ARMGUARD", "CORPUN",
  "ARMLLT", "CORLLT", "ARMHLT",
  "CORHLT", "ARMTL", "CORTL",
  "ARMRL", "CORRL", "ARMAP",
  "ARMLAB", "ARMSY", "ARMVP",
  "CORAP", "CORLAB", "CORSY",
  "CORVP",
}

function mutate(ctx)
  return {
    files = { add = { "files" } },
    rules = {
      where { unitname = is("SCROUGE") }:change { side = lock(0) },
      where { unitname = is("SCRGMEX") }:change { side = lock(0) },
    },
    units = function(units, ctx)
      units:where { bmcode = 1, extractsmetal = 0.001, unitname = not_(is("SCROUGE")) }:set { side = 10000 }
    end,
    menus = function(menus, ctx)
      menus:add("ARMGATE", "SCROUGE", { page = 1, slot = 3 })
      menus:add("CORGATE", "SCROUGE", { page = 1, slot = 3 })
      for index, unit in ipairs(offered) do
        local page = (index - 1) // 6 + 1
        local slot = (index - 1) % 6 + 1
        menus:add("SCROUGE", unit, { page = page, slot = slot })
      end
    end,
  }
end
