local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
  symbols = { error = " ", warn = " ", hint = " ", info = " " },
	colored = true,
	update_in_insert = false,
	always_visible = true,
}
require('lualine').setup { options = {
    icons_enabled = true,
    theme = 'horizon',
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
    lualine_z = {'location'}
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
