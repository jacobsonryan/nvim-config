return {
  "terrortylor/nvim-comment",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
  config = function()
    require("nvim_comment").setup({
      line_mapping = "gcc",
      operator_mapping = "gc",
      comment_empty = false,
      hook = function()
        require("ts_context_commentstring").update_commentstring()
      end,
    })
  end,
}
