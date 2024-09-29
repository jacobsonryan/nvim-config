local opts = { noremap = true, silent = true }
local not_silent = { noremap = true, silent = false }
local keymap = vim.keymap

keymap.set("n", "<C-p>",":lua require'telescope.builtin'.find_files()<cr>", opts)
keymap.set("n", "<C-b>",":lua require'telescope.builtin'.buffers()<cr>", opts)
keymap.set("n", "<C-o>",":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", opts)
keymap.set("n", "<leader>n",":NvimTreeToggle<cr>", opts)
keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<cr>", opts)
keymap.set("v", "p", "P", opts)

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
