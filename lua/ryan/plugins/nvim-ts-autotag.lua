return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter", -- or "BufReadPre" if you want it earlier
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
    })
  end,
}
