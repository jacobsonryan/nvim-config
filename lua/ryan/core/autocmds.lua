local augroup = vim.api.nvim_create_augroup("NvimTreeAutoQuit", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup,
  pattern = "NvimTree_*",
  callback = function()
    local layout = vim.fn.winlayout()
    if layout[1] == "leaf" then
      local win = vim.api.nvim_get_current_win()
      local buf = vim.api.nvim_win_get_buf(win)
      local is_nvimtree = vim.bo[buf].filetype == "NvimTree"

      if is_nvimtree then
        vim.cmd("confirm quit")
      end
    end
  end,
})

vim.api.nvim_create_autocmd("QuitPre", {
  group = augroup,
  callback = function()
    if vim.bo[vim.api.nvim_get_current_buf()].filetype == "NvimTree" then
      vim.cmd("qa")
    end
  end,
})
