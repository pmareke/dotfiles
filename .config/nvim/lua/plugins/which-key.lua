return {
  "folke/which-key.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  event = "VeryLazy",
  lazy = true,
  opts = {
    notify = false,
    plugins = {
      marks = false,     -- shows a list of your marks on ' and `
      registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      -- the presets plugin, adds help for a bunch of default keybindings in Neovim
      -- No actual key bindings are created
      presets = {
        operators = false,    -- adds help for operators like d, y, ...
        motions = false,      -- adds help for motions
        text_objects = false, -- help for text objects triggered after entering an operator
        windows = false,      -- default bindings on <c-w>
        nav = false,          -- misc bindings to work with windows
        z = false,            -- bindings for folds, spelling and others prefixed with z
        g = false,            -- bindings for prefixed with g
      },
    },
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜", -- symbol used between a key and it's label
      group = "+", -- symbol prepended to a group
    },
    win = {
      border = "single",         -- none, single, double, shadow
      padding = { 2, 2, 2, 2 },  -- extra window padding [top, right, bottom, left]
      zindex = 1000,             -- positive value to position WhichKey above other floating windows.
      wo = {
        margin = { 2, 0, 2, 0 }, -- extra window margin [top, right, bottom, left]
        position = "bottom",     -- bottom, top
        winblend = 0,
      }
    },
    layout = {
      height = { min = 4, max = 25 }, -- min and max height of the columns
      width = { min = 20, max = 50 }, -- min and max width of the columns
      spacing = 3,                    -- spacing between columns
      align = "left",                 -- align columns left, center or right
    },
    show_help = true,                 -- show help message on the command line when the popup is visible
    show_keys = true,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  },
  config = function(_, opts)
    local which_key = require("which-key")
    which_key.setup(opts)
    which_key.register(require('config.which-key.defaults'), {
      mode = "n",
      prefix = "<leader>",
    })
    -- which_key.register(require('config.which-key.non_leader'))
  end
}
