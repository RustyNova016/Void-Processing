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
        order = "e[bacteria]-c[infusing]-a[iron]",
        surface_condition = nauvis_condition,
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item",  name = "void-crystals", amount = 1 },
            { type = "fluid", name = "sulfuric-acid", amount = 10 }
        },
        results = {
            { type = "item", name = "void-core-chunk",        amount_min = 1, amount_max = 2 },
            { type = "item", name = "crystalization-plating", amount = 1,     probability = 0.5 },
            { type = "item", name = "void-promethium",        amount = 1,     probability = 0.25 },
            { type = "item", name = "unstable-void-matter",   amount = 1,     probability = 0.1 },
        },
        main_product = "void-core-chunk"
    },

    {
        type = "recipe",
        name = "void-core-base-cracked-recycling",
        category = "chemistry",
        energy_required = 5,
        order = "e[bacteria]-c[infusing]-a[iron]",
        surface_condition = nauvis_condition,
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item",  name = "void-core-base-cracked", amount = 1 },
            { type = "fluid", name = "sulfuric-acid", amount = 15 }
        },
        results = {
            { type = "item", name = "void-core-chunk",        amount_min = 0, amount_max = 3 },
            { type = "item", name = "unstable-void-matter",   amount_min = 0, amount_max = 10 },
        },
        main_product = "void-core-chunk"
    },
})
