local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return 
end

local actoins = require("telescope.actions")
require('telescope').setup {}
