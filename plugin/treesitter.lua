require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = {"t32"},
  sync_install = false,
  autotag = {
    enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
