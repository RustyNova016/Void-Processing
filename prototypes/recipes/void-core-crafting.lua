local lib = require("lib")
local conditions = require("prototypes.surface_conditions")

data:extend({
    lib.merge(data.raw["recipe"]["oxide-asteroid-crushing"], {
        type = "recipe",
        name = "promethium-crushing",
        icon = lib.icon("promethium-crushing"),
        enabled = true,
        order = "b-a-d",
        surface_condition = conditions.space,
        energy_required = 8,
        ingredients = {
            { type = "item", name = "promethium-asteroid-chunk", amount = 1 },
        },
        results = { { type = "item", name = "crushed-promethium", amount = 2 } },
        allow_productivity = true,
    }),
    {
        type = "recipe",
        name = "void-core-base-heated",
        category = "metallurgy",
        energy_required = 10,
        surface_condition = conditions.vulcanus,
        ingredients = {
            { type = "item",  name = "void-core-chunk", amount = 5 },
            { type = "fluid", name = "lava",            amount = 20 }
        },
        results = {
            { type = "item", name = "void-core-base-heated", amount = 1, ignored_by_productivity = 1 },
            { type = "item", name = "stone",                 amount = 10 },
        },
        main_product = "void-core-base-heated"
    },

    {
        type = "recipe",
        name = "void-core-base",
        category = "cryogenics",
        energy_required = 90,
        ingredients = {
            { type = "item",  name = "void-core-base-heated", amount = 1 },
            { type = "fluid", name = "fluoroketone-hot",     amount = 20, ignored_by_stats = 90 },
        },
        results = {
            { type = "item",  name = "void-core-base", amount = 1,  ignored_by_productivity = 1 },
            { type = "fluid", name = "fluoroketone",   amount = 18, ignored_by_stats = 15,      ignored_by_productivity = 15 },
        },
        main_product = "void-core-base"
    },

    type = "recipe",
    name = "void-core-activation",
    category = "electromagnetics",
    energy_required = 10,
    enabled = true,
    surface_condition = conditions.fulgora,
    ingredients = {
        { type = "item",  name = "void-core-base",         amount = 1 },
        { type = "fluid", name = "electrolyte",            amount = 25, ignored_by_stats = 10 },
        { type = "fluid", name = "semi-destabilized-void", amount = 25 }
    },
    results = {
        { type = "item",  name = "void-core-pristine",     amount = 1,  probability = 0.8 },
        { type = "item",  name = "void-core-base-cracked", amount = 1,  probability = 0.2 },
        { type = "fluid", name = "electrolyte",            amount = 10, ignored_by_stats = 10, ignored_by_productivity = 10 },
    },
    main_product = "void-core-pristine"

})
