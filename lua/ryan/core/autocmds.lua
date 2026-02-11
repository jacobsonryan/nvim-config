local augroup = vim.api.nvim_create_augroup("NvimTreeAutoQuit", { clear = true })

-- Quit if nvim-tree is the last window
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup,
  pattern = "NvimTree_*",
  callback = function()
    if vim.fn.winlayout()[1] == "leaf" then
      local buf = vim.api.nvim_win_get_buf(vim.api.nvim_get_current_win())
      if vim.bo[buf].filetype == "NvimTree" then
        vim.cmd("confirm quit")
      end
    end
  end,
})

-- Quit all when closing nvim-tree directly
vim.api.nvim_create_autocmd("QuitPre", {
  group = augroup,
  callback = function()
    if vim.bo[vim.api.nvim_get_current_buf()].filetype == "NvimTree" then
      vim.cmd("qa")
    end
  end,
})
