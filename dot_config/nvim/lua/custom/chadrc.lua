---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = 'catppuccin',
  hl_override = {
    Search = {
      bg = "#f9e2af",
    }
  }
}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
 return M
