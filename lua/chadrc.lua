---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = {
    "catppuccin",
    "dark_horizon",
  },


  statusline = {
    theme = "default",
    separator_style = "arrow",
  },

  tabufline = {
    show_numbers = true,
  },

  nvdash = {
    load_on_startup = true,
  }
}

M.plugins = "plugins"

-- check core.mappings for table structure
M.mappings = require "mappings"

return M
