local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- Telescope mappings
keymap.set("n", "<D-p>", ":NvimTreeClose<CR>:lua require'telescope.builtin'.find_files()<CR>", opts)
keymap.set("n", "<D-b>", ":NvimTreeClose<CR>:lua require'telescope.builtin'.buffers()<CR>", opts)
keymap.set("n", "<D-o>", ":NvimTreeClose<CR>:lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opts)

-- Increment / Decrement
keymap.set("n", "<D-a>", "<C-a>", opts)
keymap.set("n", "<D-x>", "<C-x>", opts)
keymap.set("v", "g<D-a>", "g<C-a>", opts)
keymap.set("v", "g<D-x>", "g<C-x>", opts)

-- Navigation
keymap.set('n', '<D-w>', '<C-w>', opts)
keymap.set('n', '<D-w>v', '<C-w>v', opts)

-- NvimTree mappings
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", opts)

-- LSP diagnostics
keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>", opts)

-- Pasting
keymap.set("v", "p", "P", opts)

-- Toggle functionality
keymap.set("n", "<leader>b", ":lua require('toggle').ToggleWord()<CR>", opts)

-- Clipboard operations
keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Replace all word under cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Cellular Automaton
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", opts)

-- Centered cursor when scrolling
keymap.set("n", "<D-d>", "<C-d>zz", opts)
keymap.set("n", "<D-u>", "<C-u>zz", opts)
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- Move lines up and down in visual mode
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
