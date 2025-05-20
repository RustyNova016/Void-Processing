-- Assemble all the global files in one

return {
    mod_prefix= "voidp",
    surface_conditions = require("globals.surface_conditions");
    technology = require("globals.technology")
}
