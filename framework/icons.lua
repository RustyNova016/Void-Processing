local utils = require("framework.utils")

---Add a test icon to the prototype 
---@param data table
---@param test_icons string[]
function add_test_icon(proto, test_icons)
    -- Check if the type needs an icon
    if utils.array_contains(proto["type"], {"item", "recipe"}) and proto["icon"] == nil and proto["icons"] == nil then
        
    end 
end