return {
  {
    'sainnhe/gruvbox-material',
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_foreground = 'material'
      vim.g.gruvbox_material_background = 'hard'  -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = 'high' -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = 'dim'  -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = 'material'
      vim.g.gruvbox_material_colors_override = { bg0 = '#0e1010' } -- #0e1010
      vim.g.gruvbox_material_better_performance = 1
    end,
  },
  {
    "rose-pine/neovim",
    config = function()
      require('rose-pine').setup({
        disable_background = false,
        disable_float_background = true,
        dark_variant = 'moon',
        disable_italics = true,
        groups = {
          background = 'base',
          background_nc = '_experimental_nc',
          panel = 'surface',
          panel_nc = 'base',
          border = 'highlight_med',
          comment = 'muted',
          link = 'iris',
          punctuation = 'subtle',
          error = 'love',
          hint = 'iris',
          info = 'foam',
          warn = 'gold',
          headings = {
            h1 = 'iris',
            h2 = 'foam',
            h3 = 'rose',
            h4 = 'gold',
            h5 = 'pine',
            h6 = 'foam',
          }
        },
        highlight_groups = {
          ColorColumn = { bg = 'rose' },
          CursorLine = { bg = 'foam', blend = 10 },
          StatusLine = { fg = 'love', bg = 'love', blend = 10 },
          Search = { bg = 'gold', inherit = false },
          TelescopeBorder = { fg = "highlight_high", bg = "none" },
          TelescopeNormal = { bg = "none" },
          TelescopePromptNormal = { bg = "base" },
          TelescopeResultsNormal = { fg = "subtle", bg = "none" },
          TelescopeSelection = { fg = "text", bg = "base" },
          TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
        },
      })

    end
  },
  {
    "LunarVim/primer.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
    end
  },
  {
    "rebelot/kanagawa.nvim",
    enabled = true,
    config = function()
      require("kanagawa").setup({
        overrides = function(colors)
          local theme = colors.theme
          return {
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          }
        end,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none"
              }
            }
          }
        }
      })
    end
  },
  {
    "ChristianChiarulli/onedark.nvim",
    priority = 1000, -- Ensure it loads first,
  },
  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    },
    config = function()
      require("vitesse").setup {
        comment_italics = true,
        transparent_background = true,
        transparent_float_background = true, -- aka pum(popup menu) background
        reverse_visual = false,
        dim_nc = false,
        cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
        telescope_border_follow_float_background = false,
        diagnostic_virtual_text_background = false,
        colors = {},
      }
      vim.cmd.colorscheme 'vitesse'
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = false,
        underline = false,
        bold = false,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = false,
        invert_selection = false,
        invert_signs = true,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,    -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end
  }
}
