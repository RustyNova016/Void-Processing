local lib = require("lib")

data:extend({
    ---@type data.ItemPrototype
    {
        type = "item",
        name = "void-data-disk",
        stack_size = 50,
        icon = lib.icon("test"),     --TODO
        subgroup = "intermediaries",
        order = "d",
    },
})

---Add a data disk
---@param data_name string
---@param order string
function add_data_disk(data_name, order) 
    data:extend({
        ---@type data.ItemPrototype
        {
            type = "item",
            name = "void-data-disk-" + data_name,
            stack_size = 10,
            icon = lib.icon("test"), --TODO
            subgroup = "data-disks",
            order = "d-" + data_name,
        },
    })
end

add_data_disk("blackhole", "a")
add_data_disk("iron-plate", "b")
add_data_disk("copper-plate", "c")
add_data_disk("plastic", "d")
add_data_disk("sulphur", "e")
