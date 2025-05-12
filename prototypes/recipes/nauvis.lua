local lib = require("lib")

local nauvis_condition = {
    {
        property = "pressure",
        min = 1000,
        max = 1000
    }
}

data:extend({
    {
        type = "recipe",
        name = "void-core-chunk",
        category = "chemistry",
        energy_required = 5,
        icon = lib.icon("test"),
        order = "e[bacteria]-c[infusing]-a[iron]",
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item",  name = "void-crystals", amount = 2 },
            { type = "fluid", name = "sulfuric-acid", amount = 10 }
        },
        results = {
            { type = "item", name = "void-core-chunk",      amount = 1 },
            { type = "item", name = "crystalization-plating", amount = 1, probability = 0.5 },
            { type = "item", name = "void-promethium",      amount = 1, probability = 0.25 },
            { type = "item", name = "unstable-void-matter", amount = 1, probability = 0.1 },
        }
    },
})
