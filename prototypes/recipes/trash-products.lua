local lib = require("lib")
local conditions = require("prototypes.surface_conditions")

-- Recycling for void trash

data:extend({
    {
        type = "recipe",
        name = "void-promethium-cleaning",
        category = "centrifuging",
        surface_condition = conditions.fulgora,
        energy_required = 5,
        icons =
        {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = lib.icon("void-promethium"),
                icon_size = 64,
                scale = (0.5 * defines.default_icon_size / 64) * 0.8,
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            },
        },
        subgroup = "void-trash",
        order = "a",
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item", name = "void-promethium", amount = 3 },
        },
        results = {
            { type = "item", name = "crushed-promethium",   amount = 1 },
            { type = "item", name = "unstable-void-matter", amount = 2 },
        }
    },

    lib.merge(data.raw["recipe"]["pentapod-egg"], {
        type = "recipe",
        name = "promethium-void-culture-revitalize",
        enabled = true,
        energy_required = 5, -- time to craft in seconds (at crafting speed 1)
        icon = lib.icon("void-culture-revitalize"),
        subgroup = "void-trash",
        order = "b",
        ingredients = {
            { type = "item",  name = "promethium-void-culture-dead", amount = 1 },
            { type = "item",  name = "crushed-promethium",           amount = 1 },
            { type = "item",  name = "void-bacteria",                amount = 2 },
            { type = "fluid", name = "semi-destabilized-void",       amount = 25 }
        },
        results = {
            { type = "item", name = "promethium-void-culture", amount = 1, ignored_by_productivity = 1 },
            { type = "item", name = "void-promethium",         amount = 1, probability = 0.5 }
        },
        allow_productivity = true,
        auto_recycle = true,
        result_is_always_fresh = true,
        surface_condition = conditions.gleba,
    }),

    {
        type = "recipe",
        name = "void-crystal-slurry-recycling",
        category = "centrifuging",
        energy_required = 10,
        surface_condition = conditions.fulgora,
        icons =
        {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = lib.icon("fluid/void-crystal-slurry"),
                icon_size = 64,
                scale = (0.5 * defines.default_icon_size / 64) * 0.8,
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            },
        },
        subgroup = "void-trash",
        order = "c",
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item", name = "void-crystals-slurry-barrel", amount = 1 },
        },
        results = {
            { type = "item", name = "void-crystals",        amount = 1,     probability = 0.10 },
            { type = "item", name = "void-promethium",      amount_min = 2, amount_max = 5 },
            { type = "item", name = "unstable-void-matter", amount_min = 3, amount_max = 6 },
            { type = "item", name = "barrel",               amount = 1 }
        }
    },
    {
        type = "recipe",
        name = "void-core-base-cracked-recycling",
        icons =
        {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = lib.icon("void-core-fractured"),
                icon_size = 64,
                scale = (0.5 * defines.default_icon_size / 64) * 0.8,
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            },
        },
        category = "chemistry",
        energy_required = 5,
        subgroup = "void-trash",
        order = "d",
        surface_condition = conditions.nauvis,
        allow_productivity = true,
        enabled = true,
        ingredients = {
            { type = "item",  name = "void-core-base-cracked", amount = 1 },
            { type = "fluid", name = "sulfuric-acid",          amount = 15 }
        },
        results = {
            { type = "item", name = "void-core-chunk",      amount_min = 0, amount_max = 3 },
            { type = "item", name = "unstable-void-matter", amount_min = 0, amount_max = 10 },
        },
    },
})
