require("void_cores.recipes")
require("recipes.gleba")
require("recipes.aquilo")
require("recipes.void-conversion")
require("recipes.any")
require("recipes.vulcanus")
require("recipes.fulgora")

local lib = require("lib")

data:extend({
    lib.merge(data.raw["recipe"]["oxide-asteroid-crushing"], {
        type = "recipe",
        name = "promethium-crushing",
        enabled = true,
        order = "b-a-d",
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        icon = lib.icon("test"),
        ingredients = {
            { type = "item", name = "promethium-asteroid-chunk", amount = 1 },
        },
        results = { { type = "item", name = "crushed-promethium", amount = 2 } },
        allow_productivity = true,
    }),








    ------------------- Void production


    ------------------------------------------------------------------------------------ Entities
    {
        type = "recipe",
        name = "void-assembler",
        enabled = true,
        energy_required = 10, -- time to craft in seconds (at crafting speed 1)
        icon = "__finely-crafted-graphics__/graphics/gravity-assembler/gravity-assembler-icon.png",
        category = "void-crafting-or-fluid-crafting",
        ingredients = {
            { type = "item",  name = "tungsten-plate",         amount = 20 },
            { type = "item",  name = "quantum-processor",      amount = 5 },
            { type = "item",  name = "superconductor",         amount = 5 },
            { type = "fluid", name = "semi-destabilized-void", amount = 100 }
        },
        results = { { type = "item", name = "void-assembler", amount = 1 } }
    },

    ------------------------------------------------------------------------------------ Void Cores

})
