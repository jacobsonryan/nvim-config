require'plenary.filetype'.add_file('foo')

require('telescope').setup {
   pickers = {
      buffers = {
        show_all_buffers = true,
        sort_lastused = true,
        mappings = {
          i = {
            ['<Tab>'] = "move_selection_next",
            ['<S-Tab>'] = "move_selection_previous",
          },
          n = {
            ["d"] = "delete_buffer",
            ['<Tab>'] = "move_selection_next",
            ['<S-Tab>'] = "move_selection_previous",
          },
        },
    },
  },
  defaults = {
    file_ignore_patterns = { "node_modules" },
    prompt_prefix = " ",
    selection_caret = "  ",
    entry_prefix = "  ",
    border = {},
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    initial_mode = "insert",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      }
    },
  },
}

require('telescope').load_extension('fzy_native')
