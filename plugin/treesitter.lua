require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  sync_install = false,
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s'
      }
    }
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
