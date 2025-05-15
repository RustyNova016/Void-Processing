local utils = require("framework.utils")


-- Assemble all the framework files in one
local lib = {
    technology = require("framework.technology"),
    globals = require("globals.mod"),

    -- === utils ===
    utils = utils,
    icon = utils.icon
}

return lib
