local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "void-pylon",
        icon = lib.utils.technology_icon("void-pylon_256"),
        icon_size = 256,
        essential = false,
        effects = lib.technology.unlock_recipes({
            "void-pylon"
        }),
        prerequisites = { "void-core-activation", "void-control-unit" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60),
        upgrade = true
    }
})
