local harpoon = require("harpoon")
harpoon:setup({
  settings = {
    save_on_toggle = true,
  },
})

vim.keymap.set("n", "aa", function() harpoon:list():add() end)
vim.keymap.set("n", "<D-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<D-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<D-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<D-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<D-l>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<D-;>", function() harpoon:list():select(5) end)
