return {
  "datsfilipe/vesper.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vesper").setup({
      transparent = true,
    })
    vim.cmd("colorscheme vesper")

    -- Transparent floats with visible border
    local border_fg = "#4a4a4a"
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = border_fg })
    vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })

    -- Visible window separators
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = border_fg, bg = "NONE" })

    -- Transparent winbar/breadcrumbs
    vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })

    -- Dropbar: match icon color to text color
    local dropbar_kinds = {
      "Array", "Boolean", "Call", "Class", "Constant", "Constructor",
      "Default", "Enum", "EnumMember", "Event", "Field", "File", "Folder",
      "Function", "Identifier", "Interface", "Keyword", "List", "Macro",
      "Method", "Module", "Namespace", "Null", "Number", "Object",
      "Operator", "Package", "Pair", "Property", "Reference", "String",
      "Struct", "Type", "TypeParameter", "Unit", "Value", "Variable",
    }
    for _, kind in ipairs(dropbar_kinds) do
      vim.api.nvim_set_hl(0, "DropBarIconKind" .. kind, { link = "DropBarKind" .. kind })
    end

    -- Single (square) borders on all LSP floats
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" })
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" })

    -- Subtle cursorline
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#282828" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#d4d4d4", bold = true })

    -- Dim indent lines
    vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#2a2a2a" })

    -- Diagnostic undercurl
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#f44747" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#ff8f40" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#4fc1ff" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#a8cc8c" })
  end,
}
