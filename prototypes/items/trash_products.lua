local lib = require("lib")
local base_item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "unstable-void-matter",
        stack_size = 100,
        icon = lib.icon("unstable-void-matter"),
        subgroup = "void-trash",
        order = "a",
        inventory_move_sound = base_item_sounds.raw_fish_inventory_move, --TODO
        pick_sound = base_item_sounds.raw_fish_inventory_pickup,         --TODO
        drop_sound = base_item_sounds.raw_fish_inventory_move,
        auto_recycle = false
    },

    {
        type = "item",
        name = "void-promethium",
        stack_size = 50,
        icon = lib.icon("void-promethium"),
        subgroup = "void-trash",
        order = "b",
        inventory_move_sound = base_item_sounds.low_density_inventory_move,
        pick_sound = base_item_sounds.low_density_inventory_pickup,
        drop_sound = base_item_sounds.low_density_inventory_move,
        auto_recycle = false
    },

    {
        type = "item",
        name = "promethium-void-culture-dead",
        stack_size = 25,
        icon = lib.icon("void-culture-dead"),
        subgroup = "void-trash",
        order = "c",
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        auto_recycle = false
    },

    {
        type = "item",
        name = "void-core-base-cracked",
        stack_size = 10,
        icon = lib.icon("void-core-fractured"),
        subgroup = "void-trash",
        order = "d",
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        auto_recycle = false
    },
})
