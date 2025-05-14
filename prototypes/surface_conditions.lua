local conditions = {
    nauvis = {
        {
            property = "pressure",
            min = 1000,
            max = 1000
        }
    },
    space = {
        {
            max = 0,
            min = 0,
            property = "gravity"
        }
    },
    vulcanus = {
        {
            property = "pressure",
            min = 4000,
            max = 4000
        }
    },
    gleba = {
        {
            property = "pressure",
            min = 2000,
            max = 2000
        }
    },
    fulgora = {
        {
            property = "magnetic-field",
            min = 99,
            max = 99
        }
    },
    aquilo = {
        {
            property = "pressure",
            min = 300,
            max = 300
        }
    }

}

return conditions
