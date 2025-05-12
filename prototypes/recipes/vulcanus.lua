local lib = require("lib")

local vulcanus_condition = {
    {
        property = "pressure",
        min = 4000,
        max = 4000
    }
}

data:extend({
    {
        type = "recipe",
        name = "void-core-annealing",
        category = "metallurgy",
        energy_required = 10,
        surface_condition = vulcanus_condition,
        icon = lib.icon("test"),
        ingredients = {
            { type = "item",  name = "void-core-base", amount = 1 },
            { type = "fluid", name = "lava",           amount = 20 }
        },
        results = {
            { type = "item", name = "void-core-pristine", amount = 1, ignored_by_productivity = 1 },
            { type = "item", name = "stone",              amount = 10 },
        }
    }
})
