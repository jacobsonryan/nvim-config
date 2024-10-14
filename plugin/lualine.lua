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

local mode_map = {
  ['NORMAL'] = 'N',
  ['O-PENDING'] = 'N?',
  ['INSERT'] = 'I',
  ['VISUAL'] = 'V',
  ['V-BLOCK'] = 'VB',
  ['V-LINE'] = 'VL',
  ['V-REPLACE'] = 'VR',
  ['REPLACE'] = 'R',
  ['COMMAND'] = '!',
  ['SHELL'] = 'SH',
  ['TERMINAL'] = 'T',
  ['EX'] = 'X',
  ['S-BLOCK'] = 'SB',
  ['S-LINE'] = 'SL',
  ['SELECT'] = 'S',
  ['CONFIRM'] = 'Y?',
  ['MORE'] = 'M',
}

local auto = require "lualine.themes.gruvbox-material"
local lualine_modes = { "insert", "normal", "visual", "command", "replace", "inactive", "terminal" }
for _, field in ipairs(lualine_modes) do
    if auto[field] and auto[field].c then
        auto[field].b.bg = "NONE"
        auto[field].c.bg = "NONE"
        auto[field].c.fg = "#282828"
    end
end

require('lualine').setup {
  options = {
    icons_enabled = true,
		component_separators = '',
    section_separators = '',
    theme = auto,
		disabled_filetypes = {'NvimTree'},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { {'mode', fmt = function(s) return mode_map[s] or s end} },
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {diagnostics},
		lualine_y = {},
    lualine_z = {}
  },
  extensions = {'nvim-tree'}
}
