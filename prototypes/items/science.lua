local lib = require("lib")
local base_item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "void-data",
        stack_size = 42,
        icon = lib.icon("test"), --TODO
        subgroup = "intermediaries",
        order = "e",
        auto_recycle = false,
        spoil_ticks = 30 * minute,
        spoil_result = "gibberish-data-a",
    },

    {
        type = "tool",
        name = lib.prefix("void-science-pack"),
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

function create_gibberish_data(letter, next)
    data:extend({
        {
            type = "item",
            name = "gibberish-data-" .. letter,
            stack_size = 50,
            icon = lib.icon("gibberish-data/" .. letter), --TODO
            subgroup = "intermediaries",
            order = "d",
            auto_recycle = false,
            spoil_ticks = 1 * second,
            spoil_result = "gibberish-data-" .. next,
        },
    })
end

create_gibberish_data("a", "b")
create_gibberish_data("b", "c")
create_gibberish_data("c", "a")

create_gibberish_data("d", "e")
create_gibberish_data("e", "f")
create_gibberish_data("f", "g")
create_gibberish_data("g", "d")
