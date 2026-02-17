return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local Symbols = require("ryan.core.symbols")

    require("mason").setup()
    require("mason-lspconfig").setup({
      automatic_enable = {
        exclude = { "stylua" },
      },
      ensure_installed = {
        "ts_ls",
        "vue_ls",
        "html",
        "cssls",
        "tailwindcss",
        "jsonls",
        "lua_ls",
        "rust_analyzer",
      },
    })

    -- Diagnostic config (nvim 0.11+ sign format)
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = Symbols.error,
          [vim.diagnostic.severity.WARN] = Symbols.warning,
          [vim.diagnostic.severity.HINT] = Symbols.hint,
          [vim.diagnostic.severity.INFO] = Symbols.info,
        },
      },
      underline = true,
      update_in_insert = true,
      severity_sort = false,
      virtual_text = false,
      float = {
        border = "single",
        severity_sort = true,
        focusable = false,
        scope = "line",
        header = "",
        prefix = "",
        source = false,
        suffix = function(diagnostic)
          local code = diagnostic.code or diagnostic.source
          if code then
            return " " .. code, "Comment"
          end
          return "", ""
        end,
      },
    })

    -- Shared capabilities for all servers
    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    -- ts_ls: include vue so vue_ls can use it for TS support
    vim.lsp.config("ts_ls", {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/typescript-plugin",
            languages = { "vue" },
          },
        },
      },
    })

    -- lua_ls
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    })
  end,
}
