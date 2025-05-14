local lib = require("lib")

local fulgora_condition = {
    {
        property = "magnetic-field",
        min = 99,
        max = 99
    }
}

data:extend({

    ----------------- Recycling
    {
        type = "recipe",
        name = "void-promethium-cleaning",
        category = "centrifuging",
        surface_condition = fulgora_condition,
        energy_required = 5,
        icon = lib.icon("test"),
        order = "e[bacteria]-c[infusing]-a[iron]",
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item", name = "void-promethium", amount = 3 },
        },
        results = {
            { type = "item", name = "crushed-promethium",   amount = 1 },
            { type = "item", name = "unstable-void-matter", amount = 2 },
        }
    },

    {
        type = "recipe",
        name = "void-crystal-slurry-recycling",
        category = "centrifuging",
        energy_required = 10,
        surface_condition = fulgora_condition,
        icon = lib.icon("test"),
        order = "e[bacteria]-c[infusing]-a[iron]",
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item", name = "void-crystals-slurry-barrel", amount = 1 },
        },
        results = {
            { type = "item", name = "void-crystals",        amount = 1,     probability = 0.10 },
            { type = "item", name = "void-promethium",      amount_min = 2, amount_max = 5 },
            { type = "item", name = "unstable-void-matter", amount_min = 3, amount_max = 6 },
            { type = "item", name = "barrel",               amount = 1 }
        }
    },
})
