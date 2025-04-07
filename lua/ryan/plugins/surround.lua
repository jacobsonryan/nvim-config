return {
  "ur4ltz/surround.nvim",
  keys = { "ys", "cs", "ds" }, -- only load when surround keys are triggered
  config = function()
    require("surround").setup({
      mappings_style = "sandwich",
    })
  end,
}
