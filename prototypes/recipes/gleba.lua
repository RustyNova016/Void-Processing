local lib = require("lib")

local gleba_condition = {
    {
        property = "pressure",
        min = 2000,
        max = 2000
    }
}

data:extend({
    lib.merge(data.raw["recipe"]["pentapod-egg"], {
        type = "recipe",
        name = "promethium-void-culture",
        enabled = true,
        energy_required = 5, -- time to craft in seconds (at crafting speed 1)
        icon = lib.icon("void-culture"),
        ingredients = {
            { type = "item",  name = "crushed-promethium",     amount = 3 },
            { type = "item",  name = "void-bacteria",          amount = 2 },
            { type = "fluid", name = "semi-destabilized-void", amount = 50 }
        },
        results = { { type = "item", name = "promethium-void-culture", amount = 2, ignored_by_productivity = 2 } },
        allow_productivity = true,
        auto_recycle = true,
        result_is_always_fresh = true,
        surface_condition = gleba_condition,
    }),

    lib.merge(data.raw["recipe"]["pentapod-egg"], {
        type = "recipe",
        name = "promethium-void-culture-revitalize",
        enabled = true,
        energy_required = 5, -- time to craft in seconds (at crafting speed 1)
        icon = lib.icon("test"),
        ingredients = {
            { type = "item",  name = "promethium-void-culture-dead", amount = 1 },
            { type = "item",  name = "crushed-promethium",           amount = 1 },
            { type = "item",  name = "void-bacteria",                amount = 2 },
            { type = "fluid", name = "semi-destabilized-void",       amount = 25 }
        },
        results = {
            { type = "item", name = "promethium-void-culture", amount = 1, ignored_by_productivity = 1 },
            { type = "item", name = "void-promethium",         amount = 1, probability = 0.5 }
        },
        allow_productivity = true,
        auto_recycle = true,
        result_is_always_fresh = true,
        surface_condition = gleba_condition,
    }),

    {
        type = "recipe",
        name = "iron-bacteria-infusing",
        category = "organic",
        energy_required = 10,
        icon = lib.icon("test"),
        order = "e[bacteria]-c[infusing]-a[iron]",
        allow_productivity = true,
        result_is_always_fresh = true,
        ingredients = {
            { type = "item",  name = "nutrients",              amount = 5 },
            { type = "item",  name = "iron-bacteria",          amount = 1 },
            { type = "fluid", name = "semi-destabilized-void", amount = 20 }
        },
        results = {
            { type = "item", name = "void-bacteria", amount = 1, }
        },
        crafting_machine_tint =
        {
            primary = { r = 0.54, g = 0.12, b = 0.80, a = 1.000 },   -- #ff7400ff
            secondary = { r = 0.54, g = 0.12, b = 0.80, a = 1.000 }, -- #ff3100ff
        },
        surface_condition = gleba_condition,
    },

    {
        type = "recipe",
        name = "copper-bacteria-infusing",
        category = "organic",
        energy_required = 10,
        icon = lib.icon("test"),
        order = "e[bacteria]-c[infusing]-b[copper]",
        allow_productivity = true,
        result_is_always_fresh = true,
        ingredients = {
            { type = "item",  name = "nutrients",              amount = 5 },
            { type = "item",  name = "copper-bacteria",        amount = 1 },
            { type = "fluid", name = "semi-destabilized-void", amount = 20 }
        },
        results = {
            { type = "item", name = "void-bacteria", amount = 1, }
        },
        crafting_machine_tint =
        {
            primary = { r = 0.54, g = 0.12, b = 0.80, a = 1.000 },   -- #ff7400ff
            secondary = { r = 0.54, g = 0.12, b = 0.80, a = 1.000 }, -- #ff3100ff
        },
        surface_condition = gleba_condition,
    },
})
