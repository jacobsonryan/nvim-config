local keymap = vim.keymap
local ls = require "luasnip"
local opts = { noremap = true, silent = true }

-- Extend filetype support for HTML
ls.filetype_extend("html", { "javascript" })

-- Luasnip key mappings
keymap.set({ "i", "s" }, "<D-]>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, opts)

keymap.set({ "i", "s" }, "<D-[>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, opts)
