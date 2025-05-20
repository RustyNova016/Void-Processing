local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = lib.prefix("void-science-pack"),
        icon = lib.utils.technology_icon("void-science-pack_256"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            lib.prefix("void-science-pack")
        }),
        prerequisites = { "void-core-activation" },
        unit = lib.technology.cost(3500, lib.globals.technology.require_all_promethium, 90)
    }
})
