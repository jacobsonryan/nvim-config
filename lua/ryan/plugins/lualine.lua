return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local Symbols = require("ryan.core.symbols")

    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "",
        section_separators = "",
        theme = "vesper",
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          "branch",
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            sections = { "error", "warn" },
            symbols = { error = Symbols.error, warn = Symbols.warning },
            colored = false,
            update_in_insert = false,
            always_visible = true,
          },
        },
        lualine_c = {},
        lualine_x = {
          {
            function()
              return "Ln " .. vim.fn.line(".") .. ", Col " .. vim.fn.virtcol(".")
            end,
          },
          { "filetype", icon_only = false },
        },
        lualine_y = { "encoding", "fileformat" },
        lualine_z = {},
      },
    })
  end,
}
