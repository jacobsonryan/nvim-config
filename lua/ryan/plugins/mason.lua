return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local Symbols = require("ryan.core.symbols")

    require("mason").setup()
    require("mason-lspconfig").setup({
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
      underline = false,
      update_in_insert = true,
      severity_sort = false,
      virtual_text = false,
      float = {
        border = "rounded",
        severity_sort = true,
        focusable = false,
        scope = "line",
      },
    })

    -- Shared setup helper
    local function setup(server, opts)
      opts = vim.tbl_deep_extend("force", { capabilities = capabilities }, opts or {})
      lspconfig[server].setup(opts)
    end

    -- ts_ls: disable for Vue files (let volar handle them)
    setup("ts_ls", {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    })

    -- Volar: Vue language server (mason calls it vue_ls, lspconfig calls it volar)
    setup("volar", {
      filetypes = { "vue" },
      init_options = {
        vue = {
          hybridMode = false,
        },
      },
    })

    -- Simple servers (no special config)
    setup("html")
    setup("cssls")
    setup("tailwindcss")
    setup("jsonls")
    setup("rust_analyzer")

    setup("lua_ls", {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    })
  end,
}
