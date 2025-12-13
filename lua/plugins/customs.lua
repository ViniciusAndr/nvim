return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>fe",
        function()
          Snacks.explorer({ cwd = LazyVim.root(), auto_close = true })
        end,
        desc = "Explorer Snacks (root dir)",
      },
      {
        "<leader><space>",
        LazyVim.pick("files", { exclude = { "node_modules/" } }),
        desc = "Find Files (Root Dir)",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        jsonls = {},
        tailwindcss = {},
        dockerls = {},
        docker_compose_language_service = {},
        yamlls = {},
        ts_ls = {},
        prismals = {},
        cssls = {},
        html = {},
        lua_ls = {},
      },
    },
  },
  {
    "benfowler/telescope-luasnip.nvim",
    keys = {
      { "<leader>fs", "<cmd>Telescope luasnip<Return>", desc = "Telescope Snips" },
    },
  },
  {
    "DanielVolchek/tailiscope.nvim",
    keys = {
      { "<leader>tw", "<cmd>Telescope tailiscope<Return>", desc = "Telescope tailwindcss" },
    },
  },
  {
    "prisma/vim-prisma",
    lazy = false,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      require("rainbow-delimiters.setup").setup({
        highlight = {
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterOrange",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
        },
      })
    end,
    lazy = false,
  },
  {
    "MattesGroeger/vim-bookmarks",
    lazy = false,
  },

  {
    "tom-anders/telescope-vim-bookmarks.nvim",
    lazy = false,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    lazy = false,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
      })
    end,
    lazy = false,
  },
  {
    "rmagatti/alternate-toggler",
  },
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup()
    end,
  },
}
