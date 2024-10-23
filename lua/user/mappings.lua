local opts = { noremap = true, silent = true }
local not_silent = { noremap = true, silent = false }
local keymap = vim.keymap
local ls = require "luasnip"

keymap.set({ "i", "s" }, "<C-l>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, opts)

keymap.set({ "i", "s" }, "<C-h>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, opts)

keymap.set("n", "<C-p>", ":NvimTreeClose<cr>:lua require'telescope.builtin'.find_files()<CR>", opts)
keymap.set("n", "<C-b>",":NvimTreeClose<cr>:lua require'telescope.builtin'.buffers()<cr>", opts)
keymap.set("n", "<C-o>",":NvimTreeClose<cr>:lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", opts)
keymap.set("n", "<leader>n",":NvimTreeToggle<cr>", opts)
keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<cr>", opts)
keymap.set("v", "p", "P", opts)

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", opts);

keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

keymap.set("n", "<Up>", "<Nop>", opts)
keymap.set("n", "<Down>", "<Nop>", opts)
keymap.set("n", "<Right>", "<Nop>", opts)
keymap.set("n", "<Left>", "<Nop>", opts)

keymap.set("n", "<C-Up>", "<Nop>", opts)
keymap.set("n", "<C-Down>", "<Nop>", opts)
keymap.set("n", "<C-Right>", "<Nop>", opts)
keymap.set("n", "<C-Left>", "<Nop>", opts)

keymap.set("i", "<Up>", "<Nop>", opts)
keymap.set("i", "<Down>", "<Nop>", opts)
keymap.set("i", "<Right>", "<Nop>", opts)
keymap.set("i", "<Left>", "<Nop>", opts)

keymap.set("i", "<C-Up>", "<Nop>", opts)
keymap.set("i", "<C-Down>", "<Nop>", opts)
keymap.set("i", "<C-Right>", "<Nop>", opts)
keymap.set("i", "<C-Left>", "<Nop>", opts)
