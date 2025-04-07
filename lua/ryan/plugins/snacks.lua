return {
  "folke/snacks.nvim",
  lazy = false, -- load immediately
  priority = 1000, -- load early (good for UI plugins)
  opts = {
    picker = {
      enabled = true,
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
    indent = { enabled = true },
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
