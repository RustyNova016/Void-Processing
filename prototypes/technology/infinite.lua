local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "promethium-productivity",
        icon = lib.utils.technology_icon("crushed-promethium"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            type = "promethium-crushing",
            recipe = "steel-plate",
            change = 0.1
        }),
        prerequisites = { "void-science-pack" },
        unit = {
            count_formula = "1.2^L*1000",
            ingredients = lib.globals.technology.require_all_void,
            time = 120
        },
        max_level = "infinite",
        upgrade = true
    }
})
