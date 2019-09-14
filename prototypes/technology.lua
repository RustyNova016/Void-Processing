data:extend(
{
  {
    type = "technology",
    name = "liquid-void",
    icon = "__VoidProcessing__/graphics/liquid-void.png",
    icon_size = 32,
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-void"
      }
    },
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 2}
      },
      time = 60
    },
    order = "a-f-c"
  },
  {
    type = "technology",
    name = "void-powder",
    icon = "__VoidProcessing__/graphics/void-powder.png",
    icon_size = 32,
    prerequisites = {"liquid-void"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "void-powder"
      }
    },
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 2},
        {"utility-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    order = "a-f-c"
  }
}
)