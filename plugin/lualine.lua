local Symbols = require 'user.symbols'

-- Mode mapping
local mode_map = {
  ['NORMAL'] = 'N',
  ['O-PENDING'] = 'N?',
  ['INSERT'] = 'I',
  ['VISUAL'] = 'V',
  ['V-BLOCK'] = 'VB',
  ['V-LINE'] = 'VL',
  ['V-REPLACE'] = 'VR',
  ['REPLACE'] = 'R',
  ['COMMAND'] = '!',
  ['SHELL'] = 'SH',
  ['TERMINAL'] = 'T',
  ['EX'] = 'X',
  ['S-BLOCK'] = 'SB',
  ['S-LINE'] = 'SL',
  ['SELECT'] = 'S',
  ['CONFIRM'] = 'Y?',
  ['MORE'] = 'M',
}

-- Diagnostics setup
local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = { error = Symbols.error, warn = Symbols.warning, hint = Symbols.hint, info = Symbols.info },
  colored = true,
  update_in_insert = false,
  always_visible = true,
}

-- 🎨 Custom theme with hardcoded colors
local theme = {
  normal = { a = { fg = 'NONE', fg = '#3d6e91' } },   -- Normal: Orange bg, White fg
  insert = { a = { fg = 'NONE', fg = '#4b7d55' } },   -- Insert: Red bg, White fg
  visual = { a = { fg = 'NONE', fg = '#d8a657' } },   -- Visual: Yellow bg, White fg
  replace = { a = { fg = 'NONE', fg = '#d14b4b' } },  -- Replace: Red bg, White fg
  command = { a = { fg = 'NONE', fg = '#d14b4b' } },  -- Command: Blue bg, White fg
  inactive = { a = { fg = 'NONE', fg = '#4e4e4e' } }, -- Inactive: Grey bg, White fg
}

-- 🔧 Set all non-`a` sections to `NONE` for background
for _, mode in pairs(theme) do
  mode.b = { fg = '#d0d0d0', bg = 'NONE' }
  mode.c = { fg = '#d0d0d0', bg = 'NONE' }
end

-- Lualine setup
require('lualine').setup {
  options = {
    icons_enabled = true,
    component_separators = '',
    section_separators = '',
    theme = theme,
    disabled_filetypes = { 'NvimTree' },
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { { 'mode', fmt = function(s) return mode_map[s] or s end } },
    lualine_b = { 'branch' },
    lualine_c = {},
    lualine_x = { diagnostics },
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'nvim-tree' },
}
