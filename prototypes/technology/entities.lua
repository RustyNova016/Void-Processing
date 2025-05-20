local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "void-pylon",
        icon = lib.utils.technology_icon("test"),
        icon_size = 256,
        essential = false,
        effects = lib.technology.unlock_recipes({
            "void-pylon"
        }),
        prerequisites = { "void-science-pack" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60),
        max_level = "infinite",
        upgrade = true
    }
})
