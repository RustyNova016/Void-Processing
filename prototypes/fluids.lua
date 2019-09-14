data:extend(
{
  {
    type = "fluid",
    name = "liquid-void",
    icon = "__VoidProcessing__/graphics/liquid-void.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.60, g = 0, b = 0.45},
    flow_color = {r = 0, g = 0, b = 0},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  
  {
    type = "fluid",
    name = "liquid-corruption",
    icon = "__VoidProcessing__/graphics/liquid-corruption.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 1, g = 0, b = 0.45},
    flow_color = {r = 1, g = 0, b = 1},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  
  {
    type = "fluid",
    name = "liquid-malice",
    icon = "__VoidProcessing__/graphics/liquid-corruption.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.10, g = 0, b = 0.10},
    flow_color = {r = 1, g = 0, b = 0.45},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  }
}
)