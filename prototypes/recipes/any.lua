local lib = require("lib")

data:extend({
    {
        type = "recipe",
        name = "lithium-holmium-alloy",
        category = "metallurgy",
        energy_required = 10,
        icons = {
            {
                icon = lib.icon("molten-fluid"),
                icon_size = 64
            },
            {
                icon = "__space-age__/graphics/icons/holmium-plate.png",
                icon_size = 64,
                scale = 32.0 / 64,
                shift = { -16, 4 }
            },
            {
                icon = "__space-age__/graphics/icons/lithium-plate.png",
                icon_size = 64,
                scale = 32.0 / 64,
                shift = { -2, 16 }
            }
        },
        ingredients = {
            { type = "item", name = "lithium-plate", amount = 1 },
            { type = "item", name = "holmium-plate", amount = 2 }
        },
        results = {
            { type = "fluid", name = "lithium-holmium-alloy", amount = 30 },
        }
    },

    {
        type = "recipe",
        name = "crystalization-plating",
        category = "cryogenics",
        energy_required = 10,
        icon = lib.icon("crystalization-plating"),
        ingredients = {
            { type = "fluid", name = "lithium-holmium-alloy", amount = 10 },
            { type = "fluid", name = "fluoroketone-hot",      amount = 20 }
        },
        results = {
            { type = "item",  name = "crystalization-plating", amount = 1 },
            { type = "fluid", name = "fluoroketone",           amount = 10, ignored_by_productivity = 1 },
        }
    },

    {
        type = "recipe",
        name = "lukewarm-fluoroketone-cooling",
        category = "cryogenics",
        energy_required = 10,
        icon = lib.icon("test"),
        ingredients = {
            { type = "fluid", name = "fluoroketone", amount = 10, ignored_by_stats = 10 }
        },
        results = {
            { type = "fluid", name = "fluoroketone-cold", amount = 10, ignored_by_stats = 10 },
        }
    },
})
