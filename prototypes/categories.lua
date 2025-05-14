local lib = require("lib")

data:extend({
    {
        type = "recipe-category",
        name = "void-crafting",
    },
    {
        type = "recipe-category",
        name = "void-crafting-or-fluid-crafting",
    },
    {
        type = "item-group",
        name = "void-processing",
        order = "f-a",
        icon = lib.icon("void-processing"),
        icon_size = 128,
    },
    {
        type = "item-subgroup",
        name = "void-core-crafting",
        group = "void-processing",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "void-processes",
        group = "void-processing",
        order = "q"
    },
    {
        type = "item-subgroup",
        name = "void-cores",
        group = "void-processing",
        order = "r"
    },
    {
        type = "item-subgroup",
        name = "void-trash",
        group = "void-processing",
        order = "r"
    },
})
