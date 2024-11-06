local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "rust",
    "dockerfile",
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
    enable_rename = true,
  },
  rainbow = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "dockerfile-language-server",
    "docker-compose-language-service",
    "deno",
    "prettier",
    "eslint_d",
    "yaml-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },
  filters = {
    custom = { "node_modules" },
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}

return M
