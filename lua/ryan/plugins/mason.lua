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
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities
    local Symbols = require("ryan.core.symbols")

    -- Define servers and diagnostic icons
    local servers = {
      "ts_ls", "html", "cssls", "rust_analyzer", "vimls",
      "jsonls", "lua_ls", "clangd", "volar", "tailwindcss"
    }
    local signs = {
      Error = Symbols.error,
      Warn  = Symbols.warning,
      Hint  = Symbols.hint,
      Info  = Symbols.info
    }

    -- Mason setup
    mason.setup()
    mason_lspconfig.setup({
      ensure_installed = servers,
    })

    -- Setup diagnostic signs
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    -- Diagnostic config
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

    -- Default capabilities
    local capabilities = cmp_capabilities(vim.lsp.protocol.make_client_capabilities())

    -- Per-server settings
    local server_settings = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim", "use" },
            },
          },
        },
      },
    }

    -- Setup all servers
    for _, server in ipairs(servers) do
      local opts = { capabilities = capabilities }

      if server_settings[server] then
        opts = vim.tbl_deep_extend("force", opts, server_settings[server])
      end

      lspconfig[server].setup(opts)
    end
  end,
}
