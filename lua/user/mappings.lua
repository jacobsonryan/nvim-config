local opts = { noremap = true, silent = true }

local not_silent = { noremap = true, silent = false }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-p>",":lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<leader>n",":NvimTreeToggle<cr>", opts)

keymap("n", "<C-n>", ":tabnew<cr>", opts)
keymap("n", "<C-l>", ":tabn<cr>", opts)
keymap("n", "<C-h>", ":tabp<cr>", opts)

keymap("n", "<leader>ga", ":Git add .<cr>", opts)
keymap("n", "<leader>gc", ":Git commit -m ", not_silent)
keymap("n", "<leader>gp", ":Git push origin main<cr>", opts)

keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)

keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)


