-- Interface improvements

local parent          = ...

local barbar          = require(parent .. ".barbar")
local gitsigns        = require(parent .. ".gitsigns")
local symbols_outline = require(parent .. ".symbols-outline")
local headlines       = require(parent .. ".headlines")

return {
  { 'shaunsingh/nord.nvim', priority = 1000 },
  "rebelot/kanagawa.nvim",
  "navarasu/onedark.nvim",

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- Adds git related signs to the gutter, as well as utilities for managing changes
  {
    'lewis6991/gitsigns.nvim',
    opts = gitsigns.opts,
  },


  -- Add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      show_current_context = true,
      show_trailing_blankline_indent = false,
    },
  },


  {
    'lukas-reineke/headlines.nvim',
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = headlines.opts,
  },

  -- Set lualine as statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
    opts = {
      options = {
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    keys = barbar.keys,
    lazy = false,
    version = '^1.0.0',
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>tt", '<Cmd>Neotree toggle<CR>', desc = "[T]oggle neo-[T]ree" },
    },
  },

  {
    'simrat39/symbols-outline.nvim',
    keys = symbols_outline.keys,
    config = function(_, opts)
      require("symbols-outline").setup(opts)
    end,
    opts = symbols_outline.opts,
  }
}
