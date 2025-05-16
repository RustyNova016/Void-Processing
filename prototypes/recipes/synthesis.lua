local lib = require("lib")

function create_synthesis_recipe(item_name)
    data:extend({
        {
            type = "recipe",
            name = "void-synthesis-" .. item_name,
            category = "void-synthesis",
            energy_required = 20,
            icon = lib.icon("test"),
            allow_productivity = false,
            enabled = true,
            ingredients = {
                { type = "item",  name = "void-data-disk-" .. item_name, amount = 1 },
                { type = "fluid", name = "semi-destabilized-void", amount = 1000 },
            },
            results = {
                -- This give 15.75 items from the void disk, upping from the normal recycler's rate of 25%.
                -- This shouldn't be set too low, as science needs a net positive gain of effective science given by pack
                -- ... And not too high in case there's an "infinite" productivity research, and doesn't yield more than it consume
                { type = "item", name = "void-data-disk-" + item_name, amount = 1, probability = 0.94 }, 
                { type = "item", name = item_name, amount = 1 },
            }
        },
    })
end
