require "nvchad.mappings"
local cmp = require "cmp"

local nomap = vim.keymap.del


local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<c-s>", "<cmd>w<cr>", { desc = "save" })
map("n", "dw", 'vb"_d', { desc = "Delete previous word" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
map("n", "<leader>x", "<cmd>x<cr>", { desc = "Save and Quit" })
map("n", "<A-k>", "<cmd>m -2<cr>", { desc = "Up line" })
map("n", "<A-j>", "<cmd>m +1<cr>", { desc = "Down line" })
map("n", "<c-a>", "gg<S-v>G", { desc = "Select all" })
map("n", "dq", 'di"', { desc = "Delete in Quotes" })
map("n", "qd", "di'", { desc = "Delete in Simple Quotes" })
map(
  "n",
  "<leader>ds",
  "<cmd>Telescope lsp_document_symbols<cr>",
  { desc = "LSP Symbols", noremap = true, silent = true }
)
map("n", "<leader>a", "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>", { desc = "Search bookmarks" })
map("n", "<leader>ta", "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>", { desc = "Toggle Alternate" })
map("n", "ss", "<cmd>split<CR>", { desc = "Split horizontal" })
map("n", "sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })
map("n", "<leader>cq", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })


map({ "n", "t" }, "<leader>h", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<leader>v", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
