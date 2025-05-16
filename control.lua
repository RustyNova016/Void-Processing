local lib = require("lib")



---Initialize the controls for a recipe that can only be crafted at a specific space location
---@param recipe any
---@param space_location_name any
function add_recipe_at_location_handler(recipe, space_location_name)
    script.on_event(defines.events.on_space_platform_changed_state, function(event)
        enable_recipe_at_location(event.platform, recipe, space_location_name)
    end)
end

---Only enable a recipe if a space platform is at a specific space location
---@param platform LuaSpacePlatform
---@param recipe string
---@param space_location_name string
function enable_recipe_at_location(platform, recipe, space_location_name)
    local disable = true
    if platform.space_location ~= nil and platform.space_location.name ~= space_location_name then
        disable = false
    end

    toggle_recipe_on_surface(platform.surface, recipe, disable)
end

---Enable or disable a recipe on a whole surface
---@param surface LuaSurface
---@param recipe string
---@param disable boolean
function toggle_recipe_on_surface(surface, recipe, disable)
    local entities = surface.find_entities_filtered({})

    for _, entity in pairs(entities) do
        if entity.type == "assembling-machine" and entity.get_recipe() == recipe then
            local behaviour = entity.get_control_behavior()
            ---@diagnostic disable-next-line: inject-field
            behaviour.disable = disable
        end
    end
end

add_recipe_at_location_handler("firearm-magazine", "nauvis")
