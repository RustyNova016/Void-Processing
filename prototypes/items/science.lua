local lib = require("lib")
local base_item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "void-data-disk",
        stack_size = 10,
        icon = lib.icon("test"), --TODO
        subgroup = "void-processes",
        order = lib.order("void-data-disk"),
        inventory_move_sound = base_item_sounds.low_density_inventory_move, --TODO
        pick_sound = base_item_sounds.low_density_inventory_pickup,         --TODO
        drop_sound = base_item_sounds.low_density_inventory_move,
    },
    
    {
        type = "tool",
        name = "void-science-pack",
        icon = lib.icon("void-science-pack"),
        subgroup = "science-pack",
        color_hint = { text = "M" },
        order = "m",
        stack_size = 200,
        default_import_location = "nauvis",
        weight = 1 * kg,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value",
    },
})
