local lib = require("framework.mod")

-- Fix planet lib's adding Void science to promethium
local sciences = {}
for _, pack in pairs(data.raw["technology"]["promethium-science-pack"].unit.ingredients) do
    if pack[1] ~= lib.prefix("void-science-pack") then
        table.insert(sciences, pack)
    end
end
data.raw["technology"]["promethium-science-pack"].unit.ingredients = sciences
