require("prototypes.mod")
require("base-data-updates")

if mods["visible-planets"] then
    vp_override_planet_sprite("black-hole", "__VoidProcessing__/graphics/visible-planets/black-hole.png", 2048)
    vp_override_planet_scale("black-hole", 2.5)
    vp_override_planet_sprite("black-hole-approach", "__VoidProcessing__/graphics/visible-planets/black-hole.png", 2048)
    vp_override_planet_scale("black-hole-approach", 0.25)
end
