local devicons = require'nvim-web-devicons'

for _, icon_data in pairs(devicons.get_icons()) do
  icon_data.color = "#504945"  -- Replace with your desired hex color
end

devicons.setup {
  default = true,
}
