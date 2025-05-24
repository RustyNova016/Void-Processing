local utils = require("framework.utils")


-- Assemble all the framework files in one
local lib = {
    technology = require("framework.technology"),
    globals = require("globals.mod"),
    space_connection = require("framework.space_connection"),

    -- === utils ===
    utils = utils,
    icon = utils.icon,
    merge_tables = utils.merge_tables,
    prefix = utils.prefix
}

return lib
