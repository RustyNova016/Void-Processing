local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "unstable-void-matter-destabilizing",
        icon = lib.icon("test"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({ "unstable-void-matter-destabilizing" }),
        prerequisites = { "promethium-void-culture" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "waste-processing-1",
        icons = {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = lib.icon("void-promethium"),
                icon_size = 64,
                scale = (0.5 * defines.default_icon_size / 64) * 0.8,
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            },
        },
        essential = true,
        effects = lib.technology.unlock_recipes({ "void-promethium-cleaning", "promethium-void-culture-revitalize" }),
        prerequisites = { "unstable-void-matter-destabilizing" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "waste-processing-2",
        icons = {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = lib.icon("fluid/void-crystal-slurry"),
                icon_size = 64,
                scale = (0.5 * defines.default_icon_size / 64) * 0.8,
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            },
        },
        essential = true,
        effects = lib.technology.unlock_recipes({ "void-crystal-slurry-recycling" }),
        prerequisites = { "waste-processing-1", "void-crystals" },
        unit = lib.technology.cost(2000, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "waste-processing-3",
        icons = {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = lib.icon("void-core-fractured"),
                icon_size = 64,
                scale = (0.5 * defines.default_icon_size / 64) * 0.8,
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            },
        },
        essential = true,
        effects = lib.technology.unlock_recipes({ "void-core-base-cracked-recycling" }),
        prerequisites = { "waste-processing-2", "void-core-base" },
        unit = lib.technology.cost(3000, lib.globals.technology.require_all_promethium, 60)
    }
})
