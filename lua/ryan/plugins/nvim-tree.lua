return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local Symbols = require("ryan.core.symbols")

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
        indent_markers = { enable = true },
        icons = {
          web_devicons = {
            file = { enable = true, color = false },
            folder = { enable = false, color = false },
          },
          glyphs = {
            default = "",
            symlink = "",
            git = {
              unstaged = "",
              staged = "",
              unmerged = "",
              renamed = "󰁕",
              untracked = "",
              deleted = "",
              ignored = "",
            },
          },
        },
      },
      view = {
        side = "right",
        width = 35,
        adaptive_size = true,
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500,
      },
      update_focused_file = {
        enable = true,
      },
    })
  end,
}
