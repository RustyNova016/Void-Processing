local lib = require("lib")

local Public = {}

function Public.add_science_recipe(item_name)
    local item = data.raw["item"][item_name]
    if item == nil then
        error("Tried to add a condensing recipe for `" .. item_name .. "`, but that item doesn't exists")
    end


    data:extend({

        --- Add the condensing recipe
        {
            type = "recipe",
            name = "void-data-disk-" .. item_name,
            category = "void-condensing",
            energy_required = 30,
            icon = lib.icon("test"),
            allow_productivity = false,
            enabled = true,
            ingredients = {
                { type = "item",  name = "void-data-disk",         amount = 1,  ignored_by_stats = 1 },
                { type = "item",  name = item_name,                amount = 20 },
                { type = "fluid", name = "semi-destabilized-void", amount = 200 },
            },
            results = {
                { type = "item", name = "void-data-disk-" + item_name, amount = 1 },
            }
        },

        --- Add the synthesis recipe
        {
            type = "recipe",
            name = "void-synthesis-" .. item_name,
            category = "void-synthesis",
            energy_required = 90,
            icon = lib.icon("test"),
            allow_productivity = true,
            enabled = true,
            ingredients = {
                { type = "item",  name = "void-data-disk-" .. item_name, amount = 1,   ignored_by_stats = 1 },
                { type = "fluid", name = "semi-destabilized-void",       amount = 5000 },
            },
            results = {
                { type = "item", name = "void-data-disk-" + item_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1 },
                { type = "item", name = item_name,                     amount = 5 },
            }
        },
    })
end

return Public
