local Symbols = require'user.symbols'
local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn", "hint" },
  symbols = { error = Symbols.error, warn = Symbols.warning, hint = Symbols.hint, info = Symbols.info },
	colored = true,
	update_in_insert = false,
	always_visible = true,
}

local custom_everforest = require('lualine.themes.everforest')
custom_everforest.normal.c.bg = 'None'
custom_everforest.normal.b.bg = 'None'
custom_everforest.visual.b.bg = 'None'
custom_everforest.visual.c.bg = 'None'
custom_everforest.visual.a.bg = 'None'
custom_everforest.visual.a.fg = '#e68183'
custom_everforest.insert.b.bg = 'None'
custom_everforest.insert.b.fg = '#d39bb6'
custom_everforest.normal.b.fg = '#d39bb6'
custom_everforest.insert.a.bg = 'None'
custom_everforest.insert.b.bg = 'None'
custom_everforest.insert.c.bg = 'None'
custom_everforest.command.c.bg = 'None'
custom_everforest.insert.a.fg = '#d8caac '
custom_everforest.normal.a.fg = '#a7c080'
custom_everforest.command.a.fg = '#87c095'
custom_everforest.command.a.bg = 'None'
custom_everforest.command.b.bg = 'None'
custom_everforest.normal.a.bg = 'None'

require('lualine').setup { options = {
    icons_enabled = true,
    theme = 'terafox',
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
    lualine_x = {diagnostics, 'encoding'},
		lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  extensions = {'nvim-tree'}
}
