return {
  {
    "folke/tokyonight.nvim",
    enabled = false,
    priority = 1000,
    opts = {
      on_colors = function(colors)
        colors.bg_statusline = "NONE"
      end,
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- vim.cmd.colorscheme("tokyonight-night")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require('lualine').setup()
      require("catppuccin").setup({
        transparent_background = true,
      })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  }
}
