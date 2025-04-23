return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "jacobsonryan/lualine-nextname.nvim" },
  config = function()
    local Symbols = require("ryan.core.symbols")
    local nextname = require("lualine_components.nextname")

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
      normal =   { a = { fg = "NONE", fg = "#5e81ac" } },
      insert =   { a = { fg = "NONE", fg = "#88c0d0" } },
      visual =   { a = { fg = "NONE", fg = "#b48ead" } },
      replace =  { a = { fg = "NONE", fg = "#bf616a" } },
      command =  { a = { fg = "NONE", fg = "#bf616a" } },
      inactive = { a = { fg = "NONE", fg = "#434c5e" } },
    }

    for _, mode in pairs(theme) do
      mode.b = { fg = "#d8dee9", bg = "NONE" }
      mode.c = { fg = "#434c5e", bg = "NONE" }
      mode.x = { fg = "#d8dee9", bg = "NONE" }
    end

    vim.api.nvim_set_hl(0, "StatusLineBold", { bold = true, fg = "#d8dee9", bg = "NONE" })


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
        lualine_b = {
          "branch",
        },
        lualine_c = { nextname },
        lualine_x = { diagnostics },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { "nvim-tree" },
    })
  end,
}
