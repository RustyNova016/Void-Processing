--require("void_cores.recipes")
require("recipes.void-conversion")
require("recipes.intermediaries")
require("recipes.trash-products")
require("recipes.science")
require("recipes.void-core-crafting")


data:extend({
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
            { type = "item",  name = "void-core-pristine",     amount = 1 },
            { type = "fluid", name = "semi-destabilized-void", amount = 100 },
        },
        results = { { type = "item", name = "void-assembler", amount = 1 } }
    },
})
