require'plenary.filetype'.add_file('foo')

local layout_strategies = require("telescope.pickers.layout_strategies")

layout_strategies.horizontal_fused = function(picker, max_columns, max_lines, layout_config)
  local layout = layout_strategies.horizontal(picker, max_columns, max_lines, layout_config)
  layout.prompt.title = ""
  layout.results.title = ""
  if layout.preview then
    layout.preview.title = ""
    layout.preview.borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '┴' }
    layout.results.borderchars = { "─", "│", "─", "│", "┌", "┬", "┤", "├" }
    layout.results.width = layout.results.width + 1
  end
  layout.results.height = layout.results.height + 1
  layout.prompt.width = layout.prompt.width + 1
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
    layout_strategy = "horizontal_fused",
    layout_config = {
      horizontal = { width = 0.65, height = 0.65 },
      preview_width = 0.5,
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
