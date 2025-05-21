local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "crystalization-plating",
        icon = lib.utils.technology_icon("crystalization-plating_256"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            "lithium-holmium-alloy",
            "crystalization-plating",
            "lukewarm-fluoroketone-cooling"
        }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_cryogenic, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    }
})
