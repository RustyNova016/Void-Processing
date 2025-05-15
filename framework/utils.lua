local utils = {}

---Merge two tables together
---@generic T: table
---@param old T
---@generic U: table
---@param new U
---@return T | U
function utils.merge_tables(old, new)
    -- Deepcopy to prevent reference shenanigans
    old = util.table.deepcopy(old)
    new = util.table.deepcopy(new)

    for k, v in pairs(new) do
        if v == "nil" then
            old[k] = nil
        else
            old[k] = v
        end
    end

    return old
end

---Merge two arrays together
---@generic T
---@param old T[]
---@generic U
---@param new U[]
---@return (T | U)[]
function utils.merge_arrays(old, new)
    -- Deepcopy to prevent reference shenanigans
    old = util.table.deepcopy(old)
    new = util.table.deepcopy(new)

    for _, v in pairs(new) do
        old.insert(v)
    end

    return old
end

---Return the path to a specific icon in `mod_root/graphics/icons`
---
---To get icons in nested directories, add a `/`, ex: "fluid/water"
---@param name string
---@return string
utils.icon = function(name) return ('__void_factories__/graphics/icons/%s.png'):format(name) end

return utils
