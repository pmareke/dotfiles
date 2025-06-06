return {
  {
    "folke/tokyonight.nvim",
    priority = 150,
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
      vim.cmd.colorscheme("tokyonight-night")
    end,
  },
}
