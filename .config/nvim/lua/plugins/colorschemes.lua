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
      vim.cmd "colorscheme gruvbox-material"
    end,
  }
}
