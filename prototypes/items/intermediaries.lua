local lib = require("lib")
local base_item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    lib.merge(data.raw.item["copper-bacteria"], {
        name = "void-bacteria",
        icon = lib.icon("void-bacteria"),
        subgroup = "intermediaries",
        order = "a",
        pictures = { { size = 32, filename = lib.icon("void-bacteria") } },
        spoil_ticks = 30 * second,
        spoil_result = "unstable-void-matter",
        weight = "nil",
    }),

    {
        type = "item",
        name = "crystalization-plating",
        stack_size = 50,
        icon = lib.icon("crystalization-plating"), --TODO
        subgroup = "intermediaries",
        order = "c",
        inventory_move_sound = base_item_sounds.low_density_inventory_move, --TODO
        pick_sound = base_item_sounds.low_density_inventory_pickup,         --TODO
        drop_sound = base_item_sounds.low_density_inventory_move,
    },
})
