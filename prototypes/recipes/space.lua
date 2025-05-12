local lib = require("lib")

local space_conditions = {
    {
        max = 0,
        min = 0,
        property = "gravity"
    }
}

data:extend({
    lib.merge(data.raw["recipe"]["oxide-asteroid-crushing"], {
        type = "recipe",
        name = "promethium-crushing",
        enabled = true,
        order = "b-a-d",
        surface_condition = space_conditions,
        energy_required = 8, -- time to craft in seconds (at crafting speed 1)
        icon = lib.icon("test"),
        ingredients = {
            { type = "item", name = "promethium-asteroid-chunk", amount = 1 },
        },
        results = { { type = "item", name = "crushed-promethium", amount = 2 } },
        allow_productivity = true,
    }),
})
