local lib = require("lib")

data:extend({
    {
        type = "recipe",
        name = "void-data-disk-blackhole",
        category = "void-crafting",
        energy_required = 30,
        icon = lib.icon("test"),
        surface_condition = lib.globals.surface_conditions.space,
        allow_productivity = false,
        enabled = false,
        ingredients = {
            { type = "item", name = "void-data-disk", amount = 1 },
            { type = "fluid", name = "semi-destabilized-void", amount = 100 },
        },
        results = {
            { type = "item", name = "void-data-disk-blackhole", amount = 1 },
        }
    },
})

function add_void_learning_recipe(name)
    data:extend({
        {
            type = "recipe",
            name = "void-data-disk-" + name,
            category = "void-crafting",
            energy_required = 30,
            icon = lib.icon("test"),
            allow_productivity = false,
            enabled = false,
            ingredients = {
                { type = "item", name = "void-data-disk", amount = 1 },
                { type = "item", name = name,             amount = 20 },
                { type = "fluid", name = "semi-destabilized-void", amount = 100 },
            },
            results = {
                { type = "item", name = "void-data-disk-" + name, amount = 1 },
            }
        },
    })
end
