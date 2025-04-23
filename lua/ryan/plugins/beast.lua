return {
  "tjdevries/colorbuddy.nvim",
  lazy = false, -- load immediately at startup
  priority = 1000, -- ensure it's loaded before other UI plugins
  config = function()
    require("colorbuddy").colorscheme("beast")

    local colorbuddy = require("colorbuddy")
    local Color = colorbuddy.Color
    local Group = colorbuddy.Group
    local c = colorbuddy.colors
    local s = colorbuddy.styles

    -- 🎨 Dulled Core Colors
    -- Color.new("red", "#d14b4b")
    -- Color.new("green", "#4b7d55")
    -- Color.new("blue", "#3d6e91")
    -- Color.new("white", "#d0d0d0")
    -- Color.new("yellow", "#d8a657")
    -- Color.new("grey", "#4e4e4e")
    -- Color.new("orange", "#d98e48")
    -- Color.new("cyan", "#37cb8a")

    Color.new("red",    "#bf616a")
    Color.new("green",  "#88c0d0")
    Color.new("blue",   "#5e81ac")
    Color.new("white",  "#d8dee9")
    Color.new("yellow", "#b48ead")
    Color.new("grey",   "#434c5e")
    Color.new("orange", "#d08770")
    Color.new("cyan",   "#81a1c1")

    -- 🖌️ Base Groups
    Group.new("Normal", c.white, c.none)
    Group.new("CursorLine", nil, c.grey:dark())
    Group.new("Visual", c.white, c.grey)
    Group.new("LineNr", c.grey, c.none)
    Group.new("CursorLineNr", c.grey, nil, s.bold)
    Group.new("SignColumn", nil, c.none)

    -- 🌐 Syntax Groups
    Group.new("Type", c.blue, nil, s.bold)
    Group.new("Tag", c.blue)
    Group.new("Identifier", c.blue)
    Group.new("Keyword", c.red, nil, s.bold)
    Group.new("Function", c.blue, nil, s.bold)
    Group.new("String", c.yellow)
    Group.new("@string", c.yellow)
    Group.new("Comment", c.grey, nil, s.italic)
    Group.new("@comment", c.grey, nil, s.italic)
    Group.new("Constant", c.yellow)
    Group.new("Delimiter", c.white)
    Group.new("Special", c.orange, nil, s.bold)
    Group.new("Parameter", c.orange)
    Group.new("@parameter", c.orange)
    Group.new("MatchParen", c.cyan, nil, s.bold)

    -- 🔧 Highlight Groups for Symbols
    Group.new("Delimiter", c.orange)
    Group.new("Operator", c.orange)
    Group.new("@punctuation.delimiter", c.orange)
    Group.new("@punctuation.bracket", c.orange)
    Group.new("@operator", c.orange)

    -- 🧪 UI Groups
    Group.new("NormalFloat", c.white, c.none)
    Group.new("FloatBorder", c.grey, c.none)
    Group.new("Pmenu", c.white, c.none)
    Group.new("PmenuSel", c.white, c.grey)
    Group.new("Title", c.yellow, nil, s.bold)

    -- 🧩 Telescope Groups
    Group.new("TelescopeNormal", c.white, c.none)
    Group.new("TelescopeBorder", c.grey, c.none)

    -- 🛠️ Diagnostic Highlights
    Group.new("DiagnosticError", c.red)
    Group.new("DiagnosticWarn", c.orange)
    Group.new("DiagnosticInfo", c.blue)
    Group.new("DiagnosticHint", c.green)

    -- 🔧 Indent Guides and Splits
    Group.new("WinSeparator", c.grey)

    -- 🔧 Other
    Group.new("VisualNOS", c.red, c.none)
    Group.new("NonText", c.grey)
    Group.new("Underlined", c.blue, nil, s.underline)
    Group.new("Bold", c.white, nil, s.bold)
    Group.new("Italic", c.white, nil, s.italic)
    Group.new("Todo", c.orange, c.none, s.bold)
    Group.new("Directory", c.blue)
    Group.new("StatusLine", c.white, c.none)
    Group.new("StatusLineNC", c.grey, c.none)
  end,
}
