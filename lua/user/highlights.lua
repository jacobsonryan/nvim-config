local ibl = '#282828'
local bg = '#101010'
local border_color = '#928374'
local selection = '#3c3836'
local accent = '#e78a4e'
local icons = '#504945'

-- Vert Split
vim.api.nvim_set_hl(0, 'VertSplit', { fg = border_color })

-- Telescope
vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = border_color })
vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = border_color })
vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = border_color })
vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = selection })

-- Indent Blankline
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = ibl })
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceChar', { fg = ibl })
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = ibl })
vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { fg = border_color })

-- Floats
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = border_color })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = bg })

-- NvimTree
vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon', { fg = icons })
vim.api.nvim_set_hl(0, 'NvimTreeFileIcon', { fg = icons })
vim.api.nvim_set_hl(0, 'NvimTreeFolderName', { fg = accent })
vim.api.nvim_set_hl(0, 'NvimTreeEmptyFolderName', { fg = accent })
vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderName', { fg = accent })
vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = border_color })
