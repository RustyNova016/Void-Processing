require("prototypes.mod")
require("base-data-updates")

if mods["visible-planets"] then
    vp_override_planet_sprite("oratl", "__VoidProcessing__/graphics/visible-planets/black-hole.png", 2048)
    vp_override_planet_scale("oratl", 2.5)
    vp_override_planet_sprite("oratl-approach", "__VoidProcessing__/graphics/visible-planets/black-hole.png", 2048)
    vp_override_planet_scale("oratl-approach", 0.25)
end
