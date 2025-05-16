local lib = require("lib")

data:extend({
    {
        type = "technology",
        name = "promethium-productivity",
        icon = lib.icon("crushed-promethium"),
        icon_size = 256,
        essential = false,
        effects = { {
            type = "change-recipe-productivity",
            recipe = "promethium-crushing",
            change = 0.1
        } },
        prerequisites = { lib.prefix("void-science-pack") },
        unit = {
            count_formula = "1.2^L*1000",
            ingredients = lib.globals.technology.require_all_void,
            time = 120
        },
        max_level = "infinite",
        upgrade = true
    }
})

function create_infinite_synthesis_tech(item_name)
    data:extend({
        {
            type = "technology",
            name = "void-synthesis-" .. item_name .. "-productivity",
            icon = lib.icon("crushed-promethium"),
            icon_size = 256,
            essential = false,
            effects = { {
                type = "change-recipe-productivity",
                recipe = "void-synthesis-" .. item_name,
                change = 0.05
            } },
            prerequisites = { lib.prefix("void-science-pack") },
            unit = {
                count_formula = "1.2^L*1000",
                ingredients = lib.globals.technology.require_all_void,
                time = 120
            },
            max_level = 60,
            upgrade = true,
            nobelium_science = {
                add_minimum = "post-nobelium"
            }
        }
    })
end
