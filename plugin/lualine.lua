local Symbols = require'user.symbols'
local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
  symbols = { error = Symbols.error, warn = Symbols.warning, hint = Symbols.hint, info = Symbols.info },
	colored = true,
	update_in_insert = false,
	always_visible = true,
}

local custom_gruvbox = require'lualine.themes.gruvbox'

custom_gruvbox.normal.b.bg = "#0A0E14"
custom_gruvbox.normal.c.bg = "#0A0E14"
custom_gruvbox.normal.a.fg = "#0A0E14"
custom_gruvbox.normal.a.bg = "#fabd2f"

custom_gruvbox.insert.b.bg = "#0A0E14"
custom_gruvbox.insert.c.bg = "#0A0E14"
custom_gruvbox.insert.a.fg = "#0A0E14"
custom_gruvbox.insert.a.bg = "#fabd2f"

custom_gruvbox.visual.b.bg = "#0A0E14"
custom_gruvbox.visual.c.bg = "#0A0E14"
custom_gruvbox.visual.a.fg = "#0A0E14"
custom_gruvbox.visual.a.bg = "#fabd2f"

custom_gruvbox.command.b.bg = "#0A0E14"
custom_gruvbox.command.c.bg = "#0A0E14"
custom_gruvbox.command.a.fg = "#0A0E14"
custom_gruvbox.command.a.bg = "#fabd2f"

require('lualine').setup { options = {
    icons_enabled = true,
    theme = custom_gruvbox,
		component_separators = '',
    section_separators = '',
		disabled_filetypes = {'NvimTree'},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {diagnostics},
		lualine_y = {'encoding','filetype'},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {'filename'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  },
  extensions = {'nvim-tree'}
}


