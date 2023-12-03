local servers = {'tsserver', 'html', 'cssls', 'rust_analyzer', 'vimls', 'jsonls', 'lua_ls', 'clangd', 'volar'}
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require'lspconfig'
local Symbols = require'user.symbols'
local signs = { Error = Symbols.error, Warn = Symbols.warning, Hint = Symbols.hint, Info = Symbols.info }

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = servers
})

for _, lsp in ipairs(servers) do
lspconfig[lsp].setup{
  capabilities = capabilities
}
end

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  signs = true,
  underline = false,
  update_in_insert = true,
  severity_sort = false,
  virtual_text = false,
  float = { border = "rounded" },
  -- virtual_text = {
  --   spacing = 4,
  --   prefix = '●'
  -- },
})

vim.cmd[[
  autocmd Colorscheme * highlight NormalFloat guibg=NONE ctermbg=NONE
  autocmd Colorscheme * highlight FloatBorder guibg=NONE ctermbg=NONE
]]

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
          globals = { "vim", "use" }
      }
    }
  }
}
