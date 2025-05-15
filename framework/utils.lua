local utils = {}

---Merge two tables together
---@generic T: table
---@param old T
---@generic U: table
---@param new U
---@return T | U
function utils.merge_tables(old, new)
    -- Deepcopy to prevent reference shenanigans
    old = table.deepcopy(old)
    new = table.deepcopy(new)

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
    old = table.deepcopy(old)
    new = table.deepcopy(new)

    for _, v in pairs(new) do
        table.insert(old, v)
    end

    return old
end

---Return the path to a specific icon in `mod_root/graphics/icons`
---
---To get icons in nested directories, add a `/`, ex: "fluid/water"
---@param name string
---@return string
utils.icon = function(name) return ('__void_factories__/graphics/icons/%s.png'):format(name) end

---Add a recipe category to an `assembling-machine` recipe
---@param base_entity string
---@param new_categories (data.RecipeCategoryID)[]
utils.add_recipe_category = function(base_entity, new_categories)
    data.raw["assembling-machine"][base_entity].crafting_categories = utils.merge_arrays(
        data.raw["assembling-machine"][base_entity].crafting_categories,
        new_categories
    )
end

---Return the weight of an item from its rocket stack size,
---assuming the rocket capacity is 1 ton
---@param count number
---@return number
utils.rocket_stack_size = function(count)
    return 1000000 / count
end

return utils
