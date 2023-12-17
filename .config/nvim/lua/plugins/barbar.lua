return {
  'romgrk/barbar.nvim',
  lazy = false,
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    tabpages = false,
    clickable = false,
    no_name_title = "Empty",
    icons = {
      button = "",
      filetype = {
         enabled = false,
      }
    }
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
