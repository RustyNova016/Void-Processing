local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "void-conversion-1",
        icons = {
            {
                icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
                icon_size = 64,
                scale = 48.0 / 64,
                shift = { -4, -4 }
            },
            {
                icon = lib.icon("fluid/semi-destabilized-void"),
                icon_size = 64,
                scale = 48.0 / 64,
                shift = { 4, 4 }
            }, },
        essential = true,
        effects = lib.technology.unlock_recipes({ "petroleum-destabilizing" }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "void-conversion-2",
        icons = { {
            icon = "__space-age__/graphics/icons/bioflux.png",
            icon_size = 64,
            scale = 48.0 / 64,
            shift = { -4, -4 }
        },
            {
                icon = lib.icon("fluid/semi-destabilized-void"),
                icon_size = 64,
                scale = 48.0 / 64,
                shift = { 4, 4 }
            }, },
        essential = true,
        effects = lib.technology.unlock_recipes({ "bioflux-destabilizing" }),
        prerequisites = { "void-conversion-1" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "void-conversion-3",
        icons = { {

            icon = "__base__/graphics/icons/rocket-fuel.png",
            icon_size = 64,
            scale = 48.0 / 64,
            shift = { -4, -4 }
        },
            {
                icon = lib.icon("fluid/semi-destabilized-void"),
                icon_size = 64,
                scale = 48.0 / 64,
                shift = { 4, 4 }
            }, },
        essential = true,
        effects = lib.technology.unlock_recipes({ "rocket-fuel-destabilizing" }),
        prerequisites = { "void-conversion-2" },
        unit = lib.technology.cost(1500, lib.globals.technology.require_all_promethium, 60)
    }
})
