return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    init = function()
      -- Configure VM before plugin loads to avoid C-n conflict with nvim-tree
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",           -- Use C-d instead of default C-n
        ["Find Subword Under"] = "<C-d>",
      }
    end,
  },
  {
      "MeanderingProgrammer/render-markdown.nvim",
      lazy = false,
      dependencies = {
          "nvim-treesitter/nvim-treesitter",
          "nvim-tree/nvim-web-devicons",
      },
      opts = {
          heading = {
              enabled = true,
              sign = true,
              icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
          },
          checkbox = {
              enabled = true,
              unchecked = { icon = "󰄱 " },
              checked   = { icon = "󰱒 " },
          },
          bullet = {
              enabled = true,
              icons = { "●", "○", "◆", "◇" },
          },
          code = {
              enabled = true,
              style = "full",
          },
          table = {
              enabled = true,
              style = "full",
          },
      },
  }
}
