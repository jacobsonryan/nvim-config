require'plenary.filetype'.add_file('foo')

local layout_strategies = require("telescope.pickers.layout_strategies")

layout_strategies.vertical_fused = function(picker, max_columns, max_lines, layout_config)
  local layout = layout_strategies.vertical(picker, max_columns, max_lines, layout_config)

  layout.prompt.title = ""
  layout.results.title = ""

  if layout.preview then
    layout.preview.title = ""
    layout.preview.height = layout.preview.height + 1
    layout.preview.borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' }

    layout.results.borderchars = { "─", "│", "─", "│", "├", "┤", "┤", "├" }
  else
    layout.results.borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' }
  end

  layout.results.height = layout.results.height + 1

  layout.prompt.borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' }

  return layout
end

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
    prompt_prefix = " ❯ ",
    selection_caret = "❯ ",
    path_display = { "truncate" },
    winblend = 0,
    sorting_strategy = "descending",
    entry_prefix = "  ",
    border = {},
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    initial_mode = "insert",
    layout_strategy = "vertical_fused",
    layout_config = {
      preview_cutoff = 1,
      width = 0.45,
      height = 0.6,
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
