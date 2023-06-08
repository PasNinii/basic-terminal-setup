---@type ChadrcConfig 
local M = {}
local highlights = require "custom.highlights"

M.ui = {
  theme = 'catppuccin',
  transparency = true,

  hl_override = highlights.hl_override,
  hl_add = highlights.add,
}

M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

return M

