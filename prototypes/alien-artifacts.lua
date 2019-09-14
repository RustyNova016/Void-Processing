data:extend(
{
    {
        type = "recipe",
        category = "chemistry",
        crafting_machine_tint = 
        {
          primary = 
          {
            a = 1,
            b = 0.25,
            g = 0,
            r = 0.35
          },
          secondary = 
          {
            a = 1,
            b = 0.45,
            g = 0,
            r = 0.50
          },
          tertiary = 
          {
            a = 1,
            b = 0.25,
            g = 0,
            r = 0.35
          }
        },
        name = "void-artifact",
        energy_required = 500,
        enabled = false,
        icon = "__VoidProcessing__/graphics/void-artifact.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        order = "q[voidfuel]-a",

        ingredients = 
        {
            {name = "liquid-void", amount = 100, type = "fluid"},
            {name = "alien-artifact", amount = 5, type = "item"}
        },

        results = {{name = "liquid-void", amount = 500, type = "fluid"}},
    },

    
  {
    type = "technology",
    name = "void-artifact",
    icon = "__VoidProcessing__/graphics/void-artifact.png",
    icon_size = 64,
    prerequisites = {"liquid-void"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "void-artifact"
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
        {"production-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    order = "a-f-c"
  }
}
)