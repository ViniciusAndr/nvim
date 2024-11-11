require("nvim-tree").setup {
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
