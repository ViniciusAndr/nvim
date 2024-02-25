vim.g.bookmark_highlight_lines = 1

vim.g.mapleader = ""

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})
