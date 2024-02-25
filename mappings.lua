---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["dw"] = { 'vb"_d' },
    ["<leader>q"] = { "<cmd>q<cr>" },
    ["<leader>w"] = { "<cmd>w<cr>" },
    ["<leader>x"] = { "<cmd>x<cr>" },
    ["<A-j>"] = { "<cmd>m +1<cr>" },
    ["<A-k>"] = { "<cmd>m -2<cr>" },
    ["<c-a>"] = { "gg<S-v>G" },
    ["f"] = { "<C-w>w" },
    ["dq"] = { 'di"' },
    ["qd"] = { "di'" },
    ["<leader>d"] = { "<cmd>Telescope lsp_document_symbols<cr>", opts = { noremap = true, silent = true } },
    ["<leader><Space>"] = {
      function()
        require("telescope").extensions.file_browser.file_browser {
          path = "%:p:h",
          cwd = vim.fn.expand "%:p:h",
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = true,
          initial_mode = "normal",
          layout_config = { height = 40 },
        }
      end,
      "File Browser",
    },
    ["<leader>a"] = { "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>" },
    ["<leader>ta"] = { "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>" },
    ["<leader>gl"] = { "<cmd>LazyGit<CR>" },
    ["ss"] = { "<cmd>split<cr>" },
    ["sv"] = { "<cmd>vsplit<cr>" },
    ["<leader>sa"] = { ":ysiw" },
    ["<leader>cq"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "close buffer",
    },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  i = {
    ["<C-s>"] = { "<Cmd>w<cr><ESC>" },
  },
}

-- more keybinds!

return M
