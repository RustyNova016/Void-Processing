local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "approach-discovery",
        icon = lib.icon("test"),
        icon_size = 256,
        essential = false,
        effects = {
            {
                type = "unlock-space-location",
                space_location = "black-hole-approach",
                use_icon_overlay_constant = true
            }
        },
        prerequisites = { "void-core-activation", "void-control-unit" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
    {
        type = "technology",
        name = "black-hole-discovery",
        icon = lib.icon("test"),
        icon_size = 256,
        essential = false,
        effects = {
            {
                type = "unlock-space-location",
                space_location = "black-hole",
                use_icon_overlay_constant = true
            },
            lib.technology.unlock_recipe("void-pylon-tuned")
        },
        prerequisites = { "void-core-activation", "void-control-unit" },
        unit = lib.technology.cost(2500, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
})
