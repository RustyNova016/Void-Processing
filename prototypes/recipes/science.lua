local lib = require("lib")
local conditions = require("prototypes.surface_conditions")

data:extend({
    {
        type = "recipe",
        name = "void-science-pack",
        category = "void-crafting",
        energy_required = 30,
        icon = lib.icon("void-science-pack"),
        surface_condition = conditions.space,
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item", name = "void-core-pristine", amount = 2 },
        },
        results = {
            { type = "item", name = "void-science-pack", amount = 1 },
        }
    },
})
