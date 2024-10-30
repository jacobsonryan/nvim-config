require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = {"t32", "tar"},
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
