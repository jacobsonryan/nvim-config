return {
  {
    "nvimtools/none-ls.nvim", -- updated repo name for null-ls
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/eslint.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      local eslint = require("eslint")

      -- Setup null-ls (you can add formatters/linters later here)
      null_ls.setup()

      -- Setup eslint.nvim (native LSP integration)
      eslint.setup({
        bin = "eslint", -- or `eslint_d`
        code_actions = {
          enable = true,
          apply_on_save = {
            enable = true,
            types = { "problem" },
          },
          disable_rule_comment = {
            enable = true,
            location = "separate_line",
          },
        },
        diagnostics = {
          enable = true,
          report_unused_disable_directives = false,
          run_on = "type", -- or "save"
        },
      })
    end,
  },
}
