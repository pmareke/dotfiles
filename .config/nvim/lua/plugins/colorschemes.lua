return {
  "RRethy/base16-nvim",
  name = "base16",
  priority = 1000,
  config = function()
    vim.cmd('colorscheme base16-default-dark')
  end
}
