local Symbols = require'user.symbols'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  disable_netrw = true,
	diagnostics = {
		enable = true,
    icons = {
      hint = Symbols.hint,
      info = Symbols.info,
      warning = Symbols.warning,
      error = Symbols.error,
    },
	},
  renderer = {
    indent_markers = {
      enable = true
    }
  },
  view = {
    width = 40,
  },
  update_focused_file = { enable = true }
})
