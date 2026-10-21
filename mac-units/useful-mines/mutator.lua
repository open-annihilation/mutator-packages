-- The original lists Category twice, for " MINE" and for "KAMIKAZE".
-- One Lua key cannot hold both, so the two spellings are two needs on
-- that field. A rule that sets an empty value removes the field, so the
-- empty yard map is written from the units hook on the same mines.
local function mines()
  return {
    description = has(" Mine"),
    category = has(" MINE"),
    Category = has("KAMIKAZE"),
  }
end

function mutate(ctx)
  return {
    rules = {
      where(mines()):change {
        maxdamage = set(50),
        buildcostenergy = scale(0.2),
        buildcostmetal = scale(0.2),
        buildtime = scale(0.2),
        maxslope = set(40),
        cloakcost = set(1),
        mincloakdistance = set(2),
        init_cloaked = set(1),
        digger = set(1),
      },
    },
    units = function(units, ctx)
      units:where(mines()):set { yardmap = "" }
    end,
  }
end
