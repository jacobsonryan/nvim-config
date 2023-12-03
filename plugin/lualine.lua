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

local custom_everforest = require('lualine.themes.everforest')
custom_everforest.normal.a.bg = 'None'
custom_everforest.insert.a.bg = 'None'
custom_everforest.visual.a.bg = 'None'
custom_everforest.command.a.bg = 'None'
custom_everforest.normal.a.fg = '#A7C080'
custom_everforest.insert.a.fg = '#E67E80'
custom_everforest.visual.a.fg = 'None'
custom_everforest.command.a.fg = 'None'
custom_everforest.normal.b.bg = 'None'
custom_everforest.insert.b.bg = 'None'
custom_everforest.visual.b.bg = 'None'
custom_everforest.command.b.bg = 'None'
custom_everforest.normal.b.fg = '#d39bb6'
custom_everforest.insert.b.fg = '#d39bb6'
custom_everforest.visual.b.fg = '#d39bb6'
custom_everforest.command.b.fg = '#d39bb6'

require('lualine').setup { options = {
    icons_enabled = true,
    theme = custom_everforest,
		component_separators = '',
    section_separators = '',
		disabled_filetypes = {'NvimTree'},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {},
    lualine_x = {diagnostics},
		lualine_y = {},
    lualine_z = {}
  },
  -- tabline = {
  --   lualine_a = {'filename'},
  --   lualine_b = {},
  --   lualine_c = {},
  --   lualine_x = {},
  --   lualine_y = {},
  --   lualine_z = {'tabs'}
  -- },
  extensions = {'nvim-tree'}
}


