require("colorbuddy").colorscheme('beast')

local colorbuddy = require('colorbuddy')
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local s = colorbuddy.styles

-- 🎨 Dulled Core Colors
Color.new('red', '#d14b4b')        -- Dulled Red
Color.new('green', '#4b7d55')      -- Dulled Green
Color.new('blue', '#3d6e91')       -- Dulled Blue
Color.new('white', '#d0d0d0')      -- Dulled White
Color.new('yellow', '#d8a657')     -- Dulled Yellow
Color.new('grey', '#4e4e4e')       -- Dulled Grey
Color.new('orange', '#d98e48')     -- Dulled Orange
Color.new('cyan', '#37cb8a')       -- Bright Cyan

-- 🖌️ Base Groups
Group.new('Normal', c.white, c.none)                      -- Default text
Group.new('CursorLine', nil, c.grey:dark())               -- Highlight current line
Group.new('Visual', c.white, c.grey)                      -- Visual selection
Group.new('LineNr', c.grey, c.none)                       -- Line numbers
Group.new('CursorLineNr', c.grey, nil, s.bold)            -- Current line number
Group.new('SignColumn', nil, c.none)                      -- Gutter

-- 🌐 Syntax Groups
Group.new('Type', c.blue, nil, s.bold)                    -- Types (e.g., React components)
Group.new('Tag', c.blue)                                  -- JSX/HTML tags
Group.new('Identifier', c.blue)                           -- Variables, props
Group.new('Keyword', c.red, nil, s.bold)                  -- Keywords (e.g., `function`, `return`)
Group.new('Function', c.blue, nil, s.bold)                -- Functions
Group.new('String', c.yellow)                             -- Strings
Group.new('@string', c.yellow)                            -- Strings in JSX/TSX
Group.new('Comment', c.grey, nil, s.italic)               -- Comments
Group.new('@comment', c.grey, nil, s.italic)              -- Treesitter comments
Group.new('Constant', c.yellow)                           -- Constants (e.g., numbers)
Group.new('Delimiter', c.white)                           -- Punctuation
Group.new('Special', c.orange, nil, s.bold)               -- Special text
Group.new('Parameter', c.orange)                          -- Function parameters
Group.new('@parameter', c.orange)                         -- Treesitter parameters
Group.new('MatchParen', c.cyan, nil, s.bold)

-- 🔧 Highlight Groups for Symbols
Group.new('Delimiter', c.orange)                      -- Delimiters (e.g., commas, semicolons)
Group.new('Operator', c.orange)                       -- Operators (e.g., =, +, -, >)
Group.new('@punctuation.delimiter', c.orange)         -- Treesitter punctuation delimiters
Group.new('@punctuation.bracket', c.orange)           -- Treesitter brackets
Group.new('@operator', c.orange)

-- 🧪 UI Groups
Group.new('NormalFloat', c.white, c.none)                 -- Floating windows
Group.new('FloatBorder', c.grey, c.none)                  -- Floating window borders
Group.new('Pmenu', c.white, c.none)                       -- Popup menu
Group.new('PmenuSel', c.white, c.grey)                    -- Selected popup menu item
Group.new('Title', c.yellow, nil, s.bold)                 -- Titles

-- 🧩 Telescope Groups
Group.new('TelescopeNormal', c.white, c.none)
Group.new('TelescopeBorder', c.grey, c.none)

-- 🛠️ Diagnostic Highlights
Group.new('DiagnosticError', c.red)
Group.new('DiagnosticWarn', c.orange)                     -- Orange warnings
Group.new('DiagnosticInfo', c.blue)
Group.new('DiagnosticHint', c.green)

-- 🔧 Indent Guides and Splits
Group.new('VertSplit', c.grey)                            -- Vertical split borders
Group.new('IndentBlanklineChar', c.grey)                  -- Indent guides
Group.new('IndentBlanklineSpaceChar', c.grey)             -- Indent space guides
Group.new('IndentBlanklineSpaceCharBlankline', c.grey)    -- Indent blankline space guides
Group.new('IndentBlanklineContextChar', c.white)           -- Context indent guides

-- 🔧 Override any remaining default groups
Group.new('VisualNOS', c.red, c.none)
Group.new('NonText', c.grey)
Group.new('Underlined', c.blue, nil, s.underline)
Group.new('Bold', c.white, nil, s.bold)
Group.new('Italic', c.white, nil, s.italic)
Group.new('Todo', c.orange, c.none, s.bold)
Group.new('Directory', c.blue)
