local toggle_map = {
    ["true"] = "false",
    ["false"] = "true",
    ["==="] = "!==",
    ["!=="] = "===",
    ["=="] = "!=",
    ["!="] = "=="
}

local M = {}

function M.ToggleWord()
    local line = vim.fn.getline(".")
    local cursor_col = vim.fn.col(".")
    local word_start = cursor_col - 1
    local word_end = cursor_col - 1
    while word_start > 0 and line:sub(word_start, word_start):match("[%w!<>=]") do
        word_start = word_start - 1
    end
    word_start = word_start + 1
    while word_end < #line and line:sub(word_end + 1, word_end + 1):match("[%w!<>=]") do
        word_end = word_end + 1
    end
    local word = line:sub(word_start, word_end)
    if toggle_map[word] then
        vim.cmd("normal! ciw" .. toggle_map[word])
    end
end

return M
