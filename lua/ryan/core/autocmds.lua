-- Auto-quit Neovim when only NvimTree is left or when quitting from inside it
local augroup = vim.api.nvim_create_augroup("NvimTreeAutoQuit", { clear = true })

-- Quit when only NvimTree is left
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup,
  pattern = "NvimTree_*",
  callback = function()
    local layout = vim.fn.winlayout()
    local win = layout[2]
    local is_single_window = layout[1] == "leaf" and layout[3] == nil
    local is_nvimtree = vim.bo[vim.api.nvim_win_get_buf(win)].filetype == "NvimTree"

    if is_single_window and is_nvimtree then
      vim.cmd("confirm quit")
    end
  end,
})

-- Quit all if you quit from within NvimTree
vim.api.nvim_create_autocmd("QuitPre", {
  group = augroup,
  callback = function()
    if vim.bo[vim.api.nvim_get_current_buf()].filetype == "NvimTree" then
      vim.cmd("qa")
    end
  end,
})
