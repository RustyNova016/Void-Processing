local lib = require("lib")

data:extend({
    {
        type = "fluid",
        name = "semi-destabilized-void",
        icon = lib.icon_fluid("semi-destabilized-void"),
        subgroup = "fluid",
        order = "c[void-factories]-a[main]-a[semi-destabilized-void]",
        default_temperature = 15,
        base_color = { 0.10, 0.00, 0.15 },
        flow_color = { 0.54, 0.12, 0.80 },
        auto_barrel = false
    },

    {
        type = "fluid",
        name = "lithium-holmium-alloy",
        subgroup = "fluid",
        order = "c[void-factories]-a[main]-b[semi-destabilized-void]",
        default_temperature = 190,
        base_color = { 1, 0.74, 0.85 },
        flow_color = { 0.54, 0.60, 0.70 },
        auto_barrel = false,
        icons = {
            {
                icon = lib.icon("molten-fluid"),
                icon_size = 64
            },
            {
                icon = "__space-age__/graphics/icons/holmium-plate.png",
                icon_size = 64,
                scale = 32.0 / 64,
                shift = { -16, 4 }
            },
            {
                icon = "__space-age__/graphics/icons/lithium-plate.png",
                icon_size = 64,
                scale = 32.0 / 64,
                shift = { -2, 16 }
            }
        }
    },

    {
        type = "fluid",
        name = "void-crystals-slurry",
        icon = lib.icon_fluid("void-crystal-slurry"),
        subgroup = "fluid",
        order = "c[void-factories]-a[main]-b[semi-destabilized-void]",
        default_temperature = -15,
        base_color = { 0.10, 0.00, 0.15 },
        flow_color = { 0.54, 0.12, 0.80 },
        auto_barrel = true
    },

    {
        type = "fluid",
        name = "fluoroketone",
        subgroup = "fluid",
        order = "b[new-fluid]-e[aquilo]-e[fluoroketone-hot]",
        default_temperature = 15,
        heat_capacity = "1kJ",
        base_color = { 0.3, 0.3, 0.10 },
        flow_color = { 0.4, 0.7, 0.35 },
        icon = lib.icon_fluid("fluoroketone")
    },

    -- {
    --     type = "fluid",
    --     name = "fluoroketone-super-hot",
    --     icon = lib.icon("test"),
    --     subgroup = "fluid",
    --     order = "b[new-fluid]-e[aquilo]-f[fluoroketone-hot]",
    --     default_temperature = 1500,
    --     heat_capacity = "1kJ",
    --     base_color = { 0.3, 0.3, 0.10 },
    --     flow_color = { 0.4, 0.7, 0.35 },
    -- },
})
