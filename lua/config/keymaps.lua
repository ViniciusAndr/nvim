local map = LazyVim.safe_keymap_set

map("i", "jk", "<ESC>")
map("n", "dw", 'vb"_d', { desc = "Delete previous word" })
map("n", "dq", 'di"', { desc = "Delete in Quotes" })
map("n", "qd", "di'", { desc = "Delete in Simple Quotes" })

map("x", "p", '"_dP', { desc = "Paste", noremap = true })
map("x", "d", '"_dd', { desc = "Delete", noremap = true })

map("n", "<leader>a", "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>", { desc = "Search bookmarks" })
map("n", "<leader>ta", "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>", { desc = "Toggle Alternate" })
map("n", "ss", "<cmd>split<CR>", { desc = "Split horizontal" })
map("n", "sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

map({ "n", "t" }, "<leader>v", function()
  Snacks.terminal.toggle("pwsh", {
    win = {
      position = "float",
      border = "rounded",
      width = 0.7,
      height = 0.6,
    },
  })
end, {
  desc = "Toggle floating terminal",
})
