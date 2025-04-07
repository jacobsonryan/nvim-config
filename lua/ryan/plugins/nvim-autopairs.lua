return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    local autopairs = require("nvim-autopairs")
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")

    autopairs.setup({})

    -- Integrate with nvim-cmp
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({
      map_char = { tex = "" },
    }))
  end,
}
