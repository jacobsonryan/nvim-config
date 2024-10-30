local lspkind = require('lspkind')
local luasnip = require('luasnip')
local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
   mapping = {
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      }),
      ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
   },
   sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "path" },
   },
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
    },
  },
  window = {
    completion = cmp.config.window.bordered({ border = "single", winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel" }),
    documentation = cmp.config.window.bordered({ border = "single", winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel" }),
  },
}
