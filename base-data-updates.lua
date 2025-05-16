local lib = require("lib")

lib.utils.add_recipe_category("assembling-machine-3", { "void-crafting-or-fluid-crafting" })

data.raw["technology"]["promethium-science-pack"].effects = lib.utils.merge_arrays(
    data.raw["technology"]["promethium-science-pack"].effects,
    {
        {
            type = "unlock-space-location",
            space_location = "black-hole-approach"
        },
        {
            type = "unlock-space-location",
            space_location = "black-hole"
        },
    }
)
lib.utils.add_science_to_lab("lab", { lib.prefix("void-science-pack") })
