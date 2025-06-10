local lib = require("framework.mod")

local add_data_disk = require("prototypes.void_disks.items")
local datadisk_learning = require("prototypes.void_disks.recipe")

-- Fix planet lib's adding Void science to promethium
local sciences = {}
for _, pack in pairs(data.raw["technology"]["promethium-science-pack"].unit.ingredients) do
    if pack[1] ~= lib.prefix("void-science-pack") then
        table.insert(sciences, pack)
    end
end
data.raw["technology"]["promethium-science-pack"].unit.ingredients = sciences



-- Add all the void learning recipes
for _, item in pairs(data.raw["item"]) do
---@diagnostic disable-next-line: undefined-field
    if item.voidp_learning ~= nil then
        add_data_disk(item.name, item.name)
        datadisk_learning.add_science_recipe(item.name)
    end
end