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
            b = 0.45,
            g = 0,
            r = 0.50
          }
        },
        name = "liquid-void",
        energy_required = 150,
        enabled = false,
        icon = "__VoidProcessing__/graphics/liquid-void.png",
        icon_size = 32,
        subgroup = "intermediate-product",
        order = "q[voidfuel]-a",

        ingredients = {{name = "petroleum-gas",amount = 500,type = "fluid"}},

        results = {{name = "liquid-void", amount = 10, type = "fluid"}},
    },

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
      name = "void-powder",
      energy_required = 25,
      enabled = false,
      icon = "__VoidProcessing__/graphics/void-powder.png",
      icon_size = 32,
      subgroup = "intermediate-product",
      order = "q[voidfuel]-a",

      ingredients = {{name = "liquid-void",amount = 100,type = "fluid"}},

      results = {{name = "void-powder", amount = 1, type = "item"}},
  },
  
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
            r = 1
          },
          secondary = 
          {
            a = 1,
            b = 0.45,
            g = 0,
            r = 1
          },
          tertiary = 
          {
            a = 1,
            b = 0.45,
            g = 0,
            r = 1
          }
        },
        name = "liquid-corruption",
        energy_required = 150,
        enabled = false,
        icon = "__VoidProcessing__/graphics/liquid-corruption.png",
        icon_size = 32,
        subgroup = "jsaf-intermediates-products",
        order = "a[corruption]-a",

        ingredients = {{name = "liquid-void",amount = 100,type = "fluid"}},

        results = {{name = "liquid-corruption", amount = 50, type = "fluid"}},
    }
}
)