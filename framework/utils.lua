local utils = {}

--- Return true if a value is contained in an array
---@param tab any[]
---@param val any
---@return boolean
utils.array_contains = function(val, tab)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

utils.random_number_from_string = function(str, max)
    local count = 0
    for i = 1, #str do
        local c = str:sub(i, i)
        count = count + string.byte(c) - 96
    end
end

---Check if a file exist
---@param name string
---@return boolean
utils.file_exists = function(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else return false end
end


return utils
