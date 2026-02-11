local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- LSP
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "<leader>d", vim.diagnostic.open_float, opts)

-- File explorer
map("n", "<leader>n", "<cmd>NvimTreeToggle<cr>", opts)

-- Clipboard
map("v", "p", "P", opts)
map({ "n", "v" }, "<leader>y", [["+y]], opts)

-- Find and replace word under cursor
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Move lines in visual mode
map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)

-- Git (fugitive)
map("n", "<leader>gs", "<cmd>Git<cr>", opts)
map("n", "<leader>ga", "<cmd>Git add .<cr>", opts)
map("n", "<leader>gc", "<cmd>Git commit<cr>", opts)
map("n", "<leader>gp", "<cmd>Git push<cr>", opts)
map("n", "<leader>gt", ":Git push -u origin ", opts)
