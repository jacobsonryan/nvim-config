return {
  "Bekaboo/dropbar.nvim",
  opts = {
    icons = {
      kinds = {
        file_icon = function(path)
          local devicons_ok, devicons = pcall(require, "nvim-web-devicons")
          if devicons_ok then
            local icon = devicons.get_icon(vim.fs.basename(path), vim.fn.fnamemodify(path, ":e"))
            if icon then
              return icon .. " ", "DropBarIconKindFile"
            end
          end
          return "", "DropBarIconKindFile"
        end,
        dir_icon = function(_)
          return "", "DropBarIconKindFolder"
        end,
      },
    },
    bar = {
      sources = function(buf, _)
        local sources = require("dropbar.sources")
        local utils = require("dropbar.utils")
        if vim.bo[buf].ft == "markdown" then
          return { sources.markdown }
        end
        if vim.bo[buf].buftype == "terminal" then
          return { sources.terminal }
        end
        return {
          sources.path,
          utils.source.fallback({
            sources.lsp,
            sources.treesitter,
          }),
        }
      end,
    },
  },
}
