local lib = require("lib")
local asteroid_util = require "__space-age__.prototypes.planet.asteroid-spawn-definitions"

data:extend({
    {
        type = "space-location",
        name = "black-hole",
        icon = lib.icon("black-hole"),
        starmap_icon = lib.icon("black-hole"),
        starmap_icon_size = 64,
        order = "g[black-hole]-b",
        subgroup = "planets",
        gravity_pull = 100,
        distance = 60,
        orientation = 0.22,
        magnitude = 1.0,
        label_orientation = 0,
        asteroid_spawn_influence = 1,
        draw_orbit = false,
        --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.aq, 0.9)
    },
    ---@type SpaceLocationPrototype
    {
        type = "space-location",
        name = "black-hole-approach",
        icon = lib.icon("black-hole-approach"),
        starmap_icon = lib.icon("black-hole-approach"),
        starmap_icon_size = 64,
        order = "g[black-hole]-a",
        subgroup = "planets",
        gravity_pull = 10,
        distance = 60,
        orientation = 0.23,
        magnitude = 1.0,
        label_orientation = 0.15,
        asteroid_spawn_influence = 1,
        draw_orbit = false,
        --asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.black_hole_asteroids, 0.9)
    },
    {
        type = "space-connection",
        name = "nauvis-approach",
        subgroup = "planet-connections",
        from = "nauvis",
        to = "black-hole-approach",
        order = "f",
        length = 1000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    {
        type = "space-connection",
        name = "approach-black-hole",
        subgroup = "planet-connections",
        from = "black-hole-approach",
        to = "black-hole",
        order = "f",
        length = 1000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    }
})
