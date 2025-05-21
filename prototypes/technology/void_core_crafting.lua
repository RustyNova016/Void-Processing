local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "promethium-crushing",
        icon = lib.icon("promethium-crushing"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({ "promethium-crushing" }),
        prerequisites = { "promethium-science-pack" },
        unit = lib.technology.cost(500, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
    {
        type = "technology",
        name = "promethium-void-culture",
        icon = lib.utils.technology_icon("promethium-void-culture_256"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            "promethium-void-culture",
            "iron-bacteria-infusing",
            "copper-bacteria-infusing"
        }),
        prerequisites = { "promethium-crushing", "void-conversion-1" },
        unit = lib.technology.cost(1000, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
    {
        type = "technology",
        name = "void-crystals",
        icon = lib.utils.technology_icon("void-crystals_256"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            "void-crystals",
        }),
        prerequisites = { "promethium-void-culture", "crystalization-plating" },
        unit = lib.technology.cost(1500, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
    {
        type = "technology",
        name = "void-core-chunk",
        icon = lib.utils.technology_icon("void-core-chunk_256"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            "void-core-chunk",
        }),
        prerequisites = { "void-crystals" },
        unit = lib.technology.cost(2000, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
    {
        type = "technology",
        name = "void-core-base",
        icon = lib.utils.technology_icon("void-core-base_256"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            "void-core-base-heated",
            "void-core-base"
        }),
        prerequisites = { "void-core-chunk" },
        unit = lib.technology.cost(2500, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
    {
        type = "technology",
        name = "void-core-activation",
        icon = lib.utils.technology_icon("void-core_256px"),
        icon_size = 256,
        essential = true,
        effects = lib.technology.unlock_recipes({
            "void-core-activation"
        }),
        prerequisites = { "void-core-base" },
        unit = lib.technology.cost(3000, lib.globals.technology.require_all_promethium, 60),
        ---@diagnostic disable-next-line: assign-type-mismatch
        planetslib_ensure_all_packs_from_vanilla_lab = true
    },
})
