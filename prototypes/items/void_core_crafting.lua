local lib = require("lib")
local base_item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    lib.merge(data.raw.item["promethium-asteroid-chunk"], {
        name = "crushed-promethium",
        stack_size = 25,
        icon = lib.icon("crushed-promethium"),
        subgroup = "void-processes",
        order = lib.order("crushed-promethium"),
        inventory_move_sound = base_item_sounds.low_density_inventory_move,
        pick_sound = base_item_sounds.low_density_inventory_pickup,
        drop_sound = base_item_sounds.low_density_inventory_move,
        weight = 10 * kg
    }),

    {
        type = "item",
        name = "promethium-void-culture",
        stack_size = 10,
        icon = lib.icon("void-culture"),
        subgroup = "void-processes",
        order = lib.order("promethium-void-culture"),
        inventory_move_sound = base_item_sounds.science_inventory_move,
        pick_sound = base_item_sounds.science_inventory_pickup,
        drop_sound = base_item_sounds.science_inventory_move,
        spoil_ticks = 5 * minute,
        spoil_result = "promethium-void-culture-dead",
        weight = 19 * kg
    },

    {
        type = "item",
        name = "void-crystals",
        stack_size = 50,
        icon = lib.icon("void-crystals"),
        subgroup = "void-processes",
        order = "a-a-c",
        inventory_move_sound = base_item_sounds.low_density_inventory_move,
        pick_sound = base_item_sounds.low_density_inventory_pickup,
        drop_sound = base_item_sounds.low_density_inventory_move,
        weight = 10 * kg
    },

    {
        type = "item",
        name = "void-core-chunk",
        stack_size = 10,
        icon = lib.icon("void-core-chunk"),
        subgroup = "void-processes",
        order = "a-a-d",
        inventory_move_sound = base_item_sounds.low_density_inventory_move,
        pick_sound = base_item_sounds.low_density_inventory_pickup,
        drop_sound = base_item_sounds.low_density_inventory_move,
    },

    {
        type = "item",
        name = "void-core-base",
        stack_size = 10,
        icon = lib.icon("void-core-base"),
        subgroup = "void-processes",
        order = "a-a-e",
        inventory_move_sound = base_item_sounds.low_density_inventory_move,
        pick_sound = base_item_sounds.low_density_inventory_pickup,
        drop_sound = base_item_sounds.low_density_inventory_move,
    },
})
