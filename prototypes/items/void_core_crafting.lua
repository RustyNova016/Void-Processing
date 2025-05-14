local lib = require("lib")
local base_item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    lib.merge(data.raw.item["promethium-asteroid-chunk"], {
        name = "crushed-promethium",
        stack_size = 25,
        icon = lib.icon("crushed-promethium"),
        subgroup = "void-core-crafting",
        order = "a",
        inventory_move_sound = base_item_sounds.low_density_inventory_move,
        pick_sound = base_item_sounds.low_density_inventory_pickup,
        drop_sound = base_item_sounds.low_density_inventory_move,
        auto_recycle = false
    }),

    {
        type = "item",
        name = "promethium-void-culture",
        stack_size = 10,
        icon = lib.icon("void-culture"),
        subgroup = "void-core-crafting",
        order = "b",
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        spoil_ticks = 5 * minute,
        spoil_result = "promethium-void-culture-dead",
        weight = lib.rocket_stack_size(20),
        auto_recycle = false
    },

    {
        type = "item",
        name = "void-crystals",
        stack_size = 50,
        icon = lib.icon("void-crystals"),
        subgroup = "void-core-crafting",
        order = "c",
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        weight = 10 * kg,
        auto_recycle = false
    },

    {
        type = "item",
        name = "void-core-chunk",
        stack_size = 10,
        icon = lib.icon("void-core-chunk"),
        subgroup = "void-core-crafting",
        order = "d",
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        weight = lib.rocket_stack_size(50),
        auto_recycle = false
    },

    {
        type = "item",
        name = "void-core-base-heated",
        stack_size = 10,
        icon = lib.icon("void-core-base-heated"),
        subgroup = "void-core-crafting",
        order = "e",
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        spoil_ticks = 10 * second,
        spoil_result = "void-core-base-cracked",
        auto_recycle = false
    },

    {
        type = "item",
        name = "void-core-base",
        stack_size = 10,
        icon = lib.icon("void-core-base"),
        subgroup = "void-core-crafting",
        order = "f",
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        auto_recycle = false
    },
})
