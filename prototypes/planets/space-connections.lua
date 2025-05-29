local asteroid_util = require "__space-age__.prototypes.planet.asteroid-spawn-definitions"

local to_black_hole_approach_asteroids =
{
    has_promethium_asteroids  = true,
    probability_on_range_huge =
    {
        { position = 0.001, probability = 0.00125, angle_when_stopped = asteroid_util.huge_angle },
        { position = 0.9,   probability = 0.025,    angle_when_stopped = asteroid_util.huge_angle }
    },

    type_ratios               =
    {
        { position = 0.001, ratios = asteroid_util.system_edge_ratio },
        { position = 0.02,  ratios = { 3 / 10 * 16, 5 / 10 * 16, 2 / 10 * 16, 0.04 } }, -- 3 5 2
        { position = 0.9,   ratios = { 5, 6, 5, 0.75 } },
    }
}

local to_black_hole_asteroids =
{
    has_promethium_asteroids    = false,
    probability_on_range_chunk  =
    {
        { position = 0.001, probability = 0.0,   angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.30, probability = 0.0,   angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.50, probability = 0.015, angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.70,  probability = 0.0,   angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.90, probability = 0.0,   angle_when_stopped = asteroid_util.chunk_angle }
    },
    probability_on_range_medium = {
        { position = 0.001, probability = 0,     angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.20, probability = 0,     angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.40, probability = 0.015, angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.60, probability = 0,     angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.90, probability = 0,     angle_when_stopped = asteroid_util.medium_angle }
    },
    probability_on_range_big    =
    {
        { position = 0.001,  probability = 0,     angle_when_stopped = asteroid_util.big_angle },
        { position = 0.30, probability = 0.015, angle_when_stopped = asteroid_util.big_angle },
        { position = 0.50, probability = 0,     angle_when_stopped = asteroid_util.big_angle },
        { position = 0.90, probability = 0,     angle_when_stopped = asteroid_util.big_angle }
    },

    -- type_ratios                 =
    -- {
    --     { position = 0.1, ratios = { 5, 2, 1, 0 } },
    --     { position = 0.9, ratios = { 3, 2, 1, 0 } },
    -- }

    probability_on_range_huge   =
    {
        { position = 0.001, probability = 0.025, angle_when_stopped = asteroid_util.huge_angle },
        { position = 0.2,   probability = 0.0,  angle_when_stopped = asteroid_util.huge_angle },
        { position = 0.9,   probability = 0.0,  angle_when_stopped = asteroid_util.huge_angle }
    },

    type_ratios                 =
    {
        { position = 0.001, ratios = asteroid_util.system_edge_ratio },
        { position = 0.02,  ratios = { 3 / 10 * 16, 5 / 10 * 16, 2 / 10 * 16, 0 } }, -- 3 5 2
        { position = 0.9,   ratios = { 5, 6, 5, 0 } },
    }
}

local to_shattered_asteroids = {
    has_promethium_asteroids  = true,
    probability_on_range_huge =
    {
        { position = 0.001, probability = 0.00125, angle_when_stopped = asteroid_util.huge_angle },
        { position = 0.999, probability = 0.111,   angle_when_stopped = asteroid_util.huge_angle }
    },
    type_ratios               =
    {
        { position = 0.001, ratios = { 5, 3, 8, 0.40 } },
        { position = 0.3,   ratios = { 3, 9, 4, 2.03 } },
        { position = 0.4,   ratios = { 7, 6, 3, 6.40 } },
        { position = 0.5,   ratios = { 9, 2, 5, 15.63 } },
        { position = 0.6,   ratios = { 2, 6, 8, 32.40 } },
        { position = 0.7,   ratios = { 8, 2, 5, 60.03 } },
        { position = 0.8,   ratios = { 3, 9, 4, 102.40 } },
        { position = 0.999, ratios = { 10, 2, 4, 164.03 } },
    }
}

data:extend({
    {
        type = "space-connection",
        name = "solar-system-edge-approach",
        subgroup = "planet-connections",
        from = "solar-system-edge",
        to = "black-hole-approach",
        order = "f",
        length = 130000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(to_black_hole_approach_asteroids)
    },
    {
        type = "space-connection",
        name = "approach-black-hole",
        subgroup = "planet-connections",
        from = "black-hole-approach",
        to = "black-hole",
        order = "g",
        length = 20000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(to_black_hole_asteroids)
    },
    {
        type = "space-connection",
        name = "approach-shattered-planet",
        subgroup = "planet-connections",
        from = "black-hole-approach",
        to = "shattered-planet",
        order = "h",
        length = 3900000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(to_shattered_asteroids)
    }
})
