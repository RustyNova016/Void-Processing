require("prototypes.items.void_core_crafting")
require("prototypes.items.void_cores")
require("prototypes.items.intermediaries")
require("prototypes.items.trash_products")
require("prototypes.items.science")

data:extend({
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
