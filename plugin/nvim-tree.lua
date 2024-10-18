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
      enable = true,
      inline_arrows = true,
    },
    icons = {
      web_devicons = {
        file = {
          enable = true,
          color = false,
        },
        folder = {
          enable = false,
          color = false,
        },
      },
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "󰁕",
          untracked = "",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
  view = {
    side = "right",
    width = 35,
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  update_focused_file = { enable = true }
})
