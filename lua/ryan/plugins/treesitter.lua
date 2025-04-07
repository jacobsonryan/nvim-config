return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" }, -- lazy-load on buffer load
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all", -- or a list: { "lua", "javascript", ... }
      ignore_install = { "t32", "tar" },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
