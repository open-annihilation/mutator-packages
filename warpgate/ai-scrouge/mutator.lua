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
      where {
        commander = 1,
        bmcode = 1,
        unitname = not_(is("SCROUGE")),
      }:change { side = lock(10000) },
    },
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
