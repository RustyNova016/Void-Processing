local lib = require("lib2")

data:extend({
    {
        type = "technology",
        name = "void-conversion-1",
        icons = lib.icon("test"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({ "petroleum-destabilizing" }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60)
    }
})
