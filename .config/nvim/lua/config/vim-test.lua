vim.g["test#preserve_screen"] = false
vim.g['test#strategy'] = {
  nearest = 'neovim',
  file = 'neovim',
  suite = 'neovim'
}
vim.g["test#python#runner"] = 'pytest'
vim.g["test#python#pytest#executable"] = 'PYTHONPATH=. poetry run pytest'
