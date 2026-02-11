return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
        styles = {
          comments = "italic",
          keywords = "bold",
          functions = "bold",
        },
      },
    })
    vim.cmd("colorscheme nightfox")
  end,
}
