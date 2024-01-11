local g = vim.g

g["test#preserve_screen"] = false
g['test#strategy'] = {
  nearest = 'neovim',
  file = 'neovim',
  suite = 'neovim'
}
