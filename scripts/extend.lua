
function has_order_field(data)
    if data["type"] == "item" or data["type"] == "recipe" or data["type"] == "fluid" then
        return true
    end
end

-- function extend(data)
--     if has_order_field(data) and data["order"] ~= nil {

--     }
-- end