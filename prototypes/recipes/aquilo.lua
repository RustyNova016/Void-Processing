local lib = require("lib")

local aquilo_condition = {
    {
        property = "pressure",
        min = 300,
        max = 300
    }
}

data:extend({
    {
        type = "recipe",
        name = "void-crystals",
        category = "cryogenics",
        icon = lib.icon("void-crystals"),
        order = "e[bacteria]-c[infusing]-a[iron]",
        surface_conditions = aquilo_condition,
        enabled = true,
        ingredients = {
            { type = "item",  name = "promethium-void-culture", amount = 1 },
            { type = "item",  name = "crystalization-plating",  amount = 3 },
            { type = "fluid", name = "fluoroketone-cold",       amount = 100, ignored_by_stats = 90 },
            { type = "fluid", name = "semi-destabilized-void",  amount = 20 }
        },
        results = {
            { type = "item",  name = "void-crystals",        amount_min = 0, amount_max = 3, },
            { type = "fluid", name = "void-crystals-slurry", amount_min = 0, amount_max = 25 },
            { type = "fluid", name = "fluoroketone-hot",     amount = 90,    ignored_by_stats = 90, ignored_by_productivity = 90 }
        },
        energy_required = 20,
        main_product = "void-crystals",
        allow_productivity = true,
        crafting_machine_tint =
        {
            primary = { r = 0.040, g = 0.186, b = 1.000, a = 1.000 },    -- #0a2fffff
            secondary = { r = 0.200, g = 0.400, b = 1.000, a = 1.000 },  -- #3366ffff
            tertiary = { r = 0.600, g = 0.651, b = 1.000, a = 1.000 },   -- #99a6ffff
            quaternary = { r = 0.100, g = 0.300, b = 0.500, a = 1.000 }, -- #194c7fff
        }
    },
})
