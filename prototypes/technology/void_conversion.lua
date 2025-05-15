local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "void-conversion-1",
        icon = lib.icon("test"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({ "petroleum-destabilizing" }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "void-conversion-2",
        icon = lib.icon("test"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({ "bioflux-destabilizing" }),
        prerequisites = { "void-conversion-1" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "void-conversion-2",
        icon = lib.icon("test"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({ "rocket-fuel-destabilizing" }),
        prerequisites = { "void-conversion-2" },
        unit = lib.technology.cost(1500, lib.globals.technology.require_all_promethium, 60)
    }
})
