local border_color = '#282828'
local ibl_default = '#141617'
local bg = '#101010'

-- Vert Split
vim.api.nvim_set_hl(0, 'VertSplit', { fg = border_color })

-- Telescope
vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = border_color })
vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = border_color })
vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = border_color })

-- Indent Blankline
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = ibl_default })
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceChar', { fg = ibl_default })
vim.api.nvim_set_hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = ibl_default })
vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { fg = border_color })

-- Floats
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = border_color })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = bg })

-- NvimTree
vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon', { fg = '#504945' })
vim.api.nvim_set_hl(0, 'NvimTreeFileIcon', { fg = '#504945' })
vim.api.nvim_set_hl(0, 'NvimTreeFolderName', { fg = '#e78a4e' })
vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderName', { fg = '#e78a4e' })
vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = border_color })
