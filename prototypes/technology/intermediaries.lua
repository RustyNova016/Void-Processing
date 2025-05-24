local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "crystalization-plating",
        icon = lib.utils.technology_icon("crystalization-plating_256"),
        icon_size = 256,
        essential = false,
        effects = lib.technology.unlock_recipes({
            "lithium-holmium-alloy",
            "crystalization-plating",
            "lukewarm-fluoroketone-cooling"
        }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_cryogenic, 60),
        nobelium_science = {
            add_minimum = "post-promethium"
        }
    },
    {
        type = "technology",
        name = "void-control-unit",
        icon = lib.utils.technology_icon("void-control-unit_256"),
        icon_size = 256,
        essential = false,
        effects = lib.technology.unlock_recipes({
            "void-control-unit",
        }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_promethium, 60)
    },
    {
        type = "technology",
        name = "void-data-disk",
        icon = lib.utils.technology_icon("void-data-disk_256"),
        icon_size = 256,
        essential = false,
        effects = lib.technology.unlock_recipes({
            "void-data-disk",
        }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_promethium, 60)
    }
})
