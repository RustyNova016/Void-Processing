require("items.void_core_crafting")
require("items.void_cores")
require("items.intermediaries")
require("items.trash_products")

local lib = require("lib")
local base_item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    lib.merge(data.raw["armor"]["heavy-armor"], {
        name = "fire-armor",
        stack_size = 10,
        icon = lib.icon("test"),
        inventory_move_sound = base_item_sounds.mechanical_large_inventory_move,
        pick_sound = base_item_sounds.mechanical_large_inventory_pickup,
        drop_sound = base_item_sounds.mechanical_large_inventory_move,
    }),



    {
        type = "item",
        name = "void-assembler",
        icon = "__finely-crafted-graphics__/graphics/gravity-assembler/gravity-assembler-icon.png",
        icon_size = 64,
        subgroup = "production-machine",
        order = "i",
        default_import_location = "nauvis",
        weight = 10 * 1000,
        stack_size = 20,
        place_result = "void-assembler",
    },
})

