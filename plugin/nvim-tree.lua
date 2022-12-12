local Symbols = require'user.symbols'
require("nvim-tree").setup({
	diagnostics = {
		enable = true,
    icons = {
      hint = Symbols.hint,
      info = Symbols.info,
      warning = Symbols.warning,
      error = Symbols.error,
    },
	}
})
