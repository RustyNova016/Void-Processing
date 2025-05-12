---Add data to data.raw
---@param new_data table
function extend(new_data)
    -- Check the data. If it's not a prototype, then we recurse
    if new_data["type"] == nil then
        for _, value in pairs(new_data) do
            extend(value)
        end
    end

    

    data:extend(new_data)
end