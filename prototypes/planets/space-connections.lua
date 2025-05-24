local to_black_hole_approach_asteroids =
{
    has_promethium_asteroids    = true,
    probability_on_range_huge   =
    {
        { position = 0.001, probability = asteroid_util.system_edge_huge, angle_when_stopped = asteroid_util.huge_angle },
        { position = 0.9,   probability = 0.111,                          angle_when_stopped = asteroid_util.huge_angle }
    },

    type_ratios                 =
    {
        { position = 0.001, ratios = asteroid_util.system_edge_ratio },
        { position = 0.02,  ratios = { 3 / 10 * 16, 5 / 10 * 16, 2 / 10 * 16, 0.04 } }, -- 3 5 2
        { position = 0.999, ratios = { 5, 6, 5, 0.75 } },
    }
}

local to_black_hole_asteroids =
{
    has_promethium_asteroids    = true,
    probability_on_range_chunk  =
    {
        { position = 0.93,  probability = 0,     angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.95,  probability = 0.015, angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.966, probability = 0,     angle_when_stopped = asteroid_util.chunk_angle }
    },
    probability_on_range_medium =
    {
        { position = 0.91, probability = 0,     angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.92, probability = 0.015, angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.94, probability = 0,     angle_when_stopped = asteroid_util.medium_angle }
    },
    probability_on_range_big    =
    {
        { position = 0.88, probability = 0,     angle_when_stopped = asteroid_util.big_angle },
        { position = 0.90, probability = 0.015, angle_when_stopped = asteroid_util.big_angle },
        { position = 0.92, probability = 0,     angle_when_stopped = asteroid_util.big_angle }
    },
    probability_on_range_huge   =
    {
        { position = 0.001, probability = asteroid_util.system_edge_huge, angle_when_stopped = asteroid_util.huge_angle },
        { position = 0.9,   probability = 0.111,                          angle_when_stopped = asteroid_util.huge_angle }
    },

    type_ratios                 =
    {
        { position = 0.001, ratios = asteroid_util.system_edge_ratio },
        { position = 0.02,  ratios = { 3 / 10 * 16, 5 / 10 * 16, 2 / 10 * 16, 0.04 } }, -- 3 5 2
        { position = 0.999, ratios = { 5, 6, 5, 0.75 } },
    }
}

local to_shattered_asteroids =
{
    has_promethium_asteroids    = true,
    probability_on_range_chunk  =
    {
        { position = 0.034, probability = 0,     angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.05,  probability = 0.015, angle_when_stopped = asteroid_util.chunk_angle },
        { position = 0.07,  probability = 0,     angle_when_stopped = asteroid_util.chunk_angle }
    },
    probability_on_range_medium =
    {
        { position = 0.06, probability = 0,     angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.08, probability = 0.015, angle_when_stopped = asteroid_util.medium_angle },
        { position = 0.09, probability = 0,     angle_when_stopped = asteroid_util.medium_angle }
    },
    probability_on_range_big    =
    {
        { position = 0.08,  probability = 0,     angle_when_stopped = asteroid_util.big_angle },
        { position = 0.01,  probability = 0.015, angle_when_stopped = asteroid_util.big_angle },
        { position = 0.012, probability = 0,     angle_when_stopped = asteroid_util.big_angle }
    },
    probability_on_range_huge   =
    {
        { position = 0.10,  probability = asteroid_util.system_edge_huge, angle_when_stopped = asteroid_util.huge_angle },
        { position = 0.999, probability = 0.111,                          angle_when_stopped = asteroid_util.huge_angle }
    },

    type_ratios                 =
    {
        { position = 0.001, ratios = asteroid_util.system_edge_ratio },
        { position = 0.02,  ratios = { 3 / 10 * 16, 5 / 10 * 16, 2 / 10 * 16, 0.04 } }, -- 3 5 2
        { position = 0.999, ratios = { 5, 6, 5, 0.75 } },
    }
}
