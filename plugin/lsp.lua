local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local nvim_lsp = require('lspconfig')
local servers = {'tsserver', 'html', 'cssls', 'rust_analyzer', 'vimls', 'jsonls', 'sumneko_lua', 'clangd'}
local lspconfig = require'lspconfig'

for _, lsp in ipairs(servers) do
nvim_lsp[lsp].setup{
  capabilities = capabilities
}
end

local signs = { Error = Symbols.error, Warn = Symbols.warning, Hint = Symbols.hint, Info = Symbols.info }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lspconfig.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use" }
            }
        }
    }
}
