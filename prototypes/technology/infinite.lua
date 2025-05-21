local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "promethium-productivity",
        icon = lib.icon("crushed-promethium"),
        icon_size = 64,
        essential = true,
        effects = { {
            type = "change-recipe-productivity",
            recipe = "promethium-crushing",
            change = 0.1
        } },
        prerequisites = { lib.prefix("void-science-pack") },
        unit = {
            count_formula = "1.2^L*1000",
            ingredients = lib.globals.technology.require_all_void,
            time = 120
        },
        max_level = "infinite",
        upgrade = true
    }
})
