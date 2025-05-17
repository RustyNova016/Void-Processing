local lib = require("lib")

data:extend({
    {
        type = "recipe",
        name = "void-science-pack",
        category = "void-crafting",
        energy_required = 30,
        icon = lib.icon("void-science-pack"),
        surface_condition = lib.globals.surface_conditions.space,
        allow_productivity = true,
        enabled = false,
        ingredients = {
            { type = "item", name = "void-core-pristine", amount = 2 },
        },
        results = {
            { type = "item", name = "void-science-pack", amount = 1 },
        }
    },
})
