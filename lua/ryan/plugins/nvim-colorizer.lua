return {
  "NvChad/nvim-colorizer.lua",
  event = "BufReadPre", -- Lazy load on buffer read
  config = function()
    require("colorizer").setup({
      filetypes = { "*" },
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = false,
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = false,
        css_fn = false,
        mode = "background",
        tailwind = false,
        virtualtext = "■",
      },
      buftypes = {},
    })
  end,
}
