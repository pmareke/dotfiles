return {
  "vim-test/vim-test",
  event = "VeryLazy",
  config = function()
    vim.cmd("let test#strategy = 'neovim'")
    vim.cmd("let test#python#runner = 'pytest'")
  end,
}
