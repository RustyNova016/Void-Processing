local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "black-hole-data",
        icon = lib.utils.technology_icon("void-data_256"),
        icon_size = 256,
        essential = false,
        effects = lib.technology.unlock_recipes({
            "void-data-disk-black-hole",
            "gibberish-data",
            "gibberish-data-processing-1",
            "gibberish-data-processing-2"
        }),
        prerequisites = { "black-hole-discovery", "void-data-disk" },
        unit = lib.technology.cost(1500, lib.globals.technology.require_all_promethium, 90)
    },
    {
        type = "technology",
        name = lib.prefix("void-science-pack"),
        icon = lib.utils.technology_icon("void-science-pack_256"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            lib.prefix("void-science-pack")
        }),
        prerequisites = { "void-core-activation", "black-hole-data" },
        unit = lib.technology.cost(3500, lib.globals.technology.require_all_promethium, 90)
    }
})
