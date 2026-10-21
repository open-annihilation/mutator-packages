-- Add WEAPON to the no-chase list. Do not replace the tokens already there.
function mutate(ctx)
  return {
    units = function(units, ctx)
      units:where { commander = 1, bmcode = 1 }:each(function(unit)
        local list = unit.nochasecategory or ""
        local found = false
        for token in string.gmatch(list, "%S+") do
          if string.lower(token) == "weapon" then
            found = true
            break
          end
        end
        if found then
          return
        end
        if list == "" then
          unit.nochasecategory = "WEAPON"
        elseif string.match(list, "%s$") then
          unit.nochasecategory = list .. "WEAPON"
        else
          unit.nochasecategory = list .. " WEAPON"
        end
      end)
    end,
  }
end
