--@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  transparency = false,

  hl_override = highlights.override,
  hl_add = highlights.add,
  cmp = {
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "dark_purple",
  },
  telescope = { style = "bordered" },
  tabufline = {
    enabled = true,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
