local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- Navigation
keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

-- NvimTree mappings
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", opts)

-- LSP diagnostics
keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>", opts)

-- Pasting
keymap.set("v", "p", "P", opts)

-- Clipboard operations
keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Replace all word under cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Move lines up and down in visual mode
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)

-- Git
keymap.set("n", "<leader>gs", ":Git<cr>", opts)
keymap.set("n", "<leader>ga", ":Git add .<cr>", opts)
keymap.set("n", "<leader>gc", ":Git commit<cr>", opts)
keymap.set("n", "<leader>gp", ":Git push<cr>", opts)
keymap.set("n", "<leader>gt", ":Git push -u origin ", opts)
