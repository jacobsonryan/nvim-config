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
        "volar",
        "html",
        "cssls",
        "tailwindcss",
        "jsonls",
        "lua_ls",
        "rust_analyzer",
      },
    })

    -- Diagnostic signs
    for type, icon in pairs({
      Error = Symbols.error,
      Warn = Symbols.warning,
      Hint = Symbols.hint,
      Info = Symbols.info,
    }) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    vim.diagnostic.config({
      signs = true,
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

    -- ts_ls: disable for Vue files (let Volar handle them)
    setup("ts_ls", {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    })

    -- Volar: Vue language server with TypeScript support
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
