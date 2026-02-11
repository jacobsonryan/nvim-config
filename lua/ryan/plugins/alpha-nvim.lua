return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#8fbcbb" })

    dashboard.section.header.val = {
      "       ████ ██████           █████      ██                     ",
      "      ███████████             █████                             ",
      "      █████████ ███████████████████ ███   ███████████   ",
      "     █████████  ███    █████████████ █████ ██████████████   ",
      "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
      "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
      " ██████  █████████████████████ ████ █████ █████ ████ ██████  ",
      "                                                                        ",
    }
    dashboard.section.header.opts.hl = "AlphaHeader"

    dashboard.section.buttons.val = {
      dashboard.button("/", "  Find File", "<cmd>lua require('snacks').picker.files()<cr>"),
      dashboard.button("n", "  New File", "<cmd>enew | startinsert<cr>"),
      dashboard.button("r", "  Buffers", "<cmd>lua require('snacks').picker.buffers()<cr>"),
      dashboard.button("g", "󱎸  Grep Text", "<cmd>lua require('snacks').picker.grep()<cr>"),
      dashboard.button("c", "󰢻  Config", "<cmd>e ~/.config/nvim/init.lua<cr>"),
      dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
      dashboard.button("Q", "  Quit", "<cmd>qa<cr>"),
    }

    local function footer()
      local stats = require("lazy").stats()
      local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
      return "󱐋 Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
    end

    dashboard.section.footer.val = footer()

    dashboard.opts.layout = {
      { type = "padding", val = 8 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 2 },
      dashboard.section.footer,
    }

    alpha.setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        dashboard.section.footer.val = footer()
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
