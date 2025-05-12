local utils = require("framework.utils")

local technology = {}

local technology_base = {
    type = "technology",
    icon_size = 256,
}

---@class technology_add
---@field name string
local technology_add = {}

-- ---Add a technology
-- ---@param new_data technology_add
-- technology.add = function(new_data)

-- end

---Create the technology science cost. Set this as the "unit" field
---@param count number
---@param ingredients ResearchIngredient[]
---@param time number
---@return data.TechnologyUnit
technology.cost = function(count, ingredients, time)
    return {
        count = count,
        ingredients = ingredients,
        time = time
    }
end

---Create an `unlock-recipe` effect
---@param recipe string
---@return data.UnlockRecipeModifier
technology.unlock_recipe = function(recipe)
    return {
        type = "unlock-recipe",
        recipe = recipe
    }
end

---Create multiple `unlock-recipe` effects
---@param recipes string[]
---@return data.UnlockRecipeModifier[]
technology.unlock_recipes = function(recipes)
    local effects = {}

    for _, recipe in pairs(recipes) do
        table.insert(effects, technology.unlock_recipe(recipe))
    end

    return effects
end

return technology
