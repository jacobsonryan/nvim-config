return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local Symbols = require("ryan.core.symbols")

    local mode_map = {
      ["NORMAL"]    = "N",
      ["O-PENDING"] = "N?",
      ["INSERT"]    = "I",
      ["VISUAL"]    = "V",
      ["V-BLOCK"]   = "VB",
      ["V-LINE"]    = "VL",
      ["V-REPLACE"] = "VR",
      ["REPLACE"]   = "R",
      ["COMMAND"]   = "!",
      ["SHELL"]     = "SH",
      ["TERMINAL"]  = "T",
      ["EX"]        = "X",
      ["S-BLOCK"]   = "SB",
      ["S-LINE"]    = "SL",
      ["SELECT"]    = "S",
      ["CONFIRM"]   = "Y?",
      ["MORE"]      = "M",
    }

    local diagnostics = {
      "diagnostics",
      sources = { "nvim_diagnostic" },
      sections = { "error", "warn" },
      symbols = {
        error = Symbols.error,
        warn  = Symbols.warning,
        hint  = Symbols.hint,
        info  = Symbols.info,
      },
      colored = true,
      update_in_insert = false,
      always_visible = true,
    }

    local theme = {
      normal =   { a = { fg = "NONE", fg = "#3d6e91" } },
      insert =   { a = { fg = "NONE", fg = "#4b7d55" } },
      visual =   { a = { fg = "NONE", fg = "#d8a657" } },
      replace =  { a = { fg = "NONE", fg = "#d14b4b" } },
      command =  { a = { fg = "NONE", fg = "#d14b4b" } },
      inactive = { a = { fg = "NONE", fg = "#4e4e4e" } },
    }

    for _, mode in pairs(theme) do
      mode.b = { fg = "#d0d0d0", bg = "NONE" }
      mode.c = { fg = "#d0d0d0", bg = "NONE" }
      mode.x = { fg = "#4e4e4e", bg = "NONE" }
    end

    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "",
        section_separators = "",
        theme = theme,
        disabled_filetypes = { "NvimTree" },
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(mode)
              return mode_map[mode] or mode
            end,
          },
        },
        lualine_b = { "branch" },
        lualine_c = {},
        lualine_x = { diagnostics },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { "nvim-tree" },
    })
  end,
}
