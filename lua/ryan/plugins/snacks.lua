return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    picker = {
      enabled = true,
      layout = {
        preset = "default",
        layout = {
          box = "horizontal",
          width = 0.8,
          min_width = 120,
          height = 0.8,
          {
            box = "vertical",
            border = "single",
            title = "{title} {live} {flags}",
            { win = "input", height = 1, border = "bottom" },
            { win = "list", border = "none" },
          },
          { win = "preview", title = "{preview}", border = "single", width = 0.5 },
        },
      },
      win = {
        input = {
          keys = {
            ["<Tab>"] = { "list_down", mode = { "i", "n" } },
            ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
          },
        },
      },
    },
    scope = { enabled = true },
    words = { enabled = true, debounce = 0 },
    indent = { enabled = true },
    scroll = { enabled = true },
  },
  keys = {
    { "<C-p>", function() require("snacks").picker.files() end, desc = "Find Files" },
    { "<C-o>", function() require("snacks").picker.grep() end, desc = "Grep" },
    { "<C-b>", function()
        require("snacks").picker.buffers({
          sort_lastused = true,
          current = false,
        })
      end, desc = "Buffers"
    },
  },
}
