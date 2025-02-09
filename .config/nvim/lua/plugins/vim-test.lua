return {
    "vim-test/vim-test",
    event = "VeryLazy",
    dependencies = {
      "preservim/vimux"
    },
    config = function()
      vim.cmd("let test#strategy = 'vimux'")
      vim.cmd("let VimuxHeight = '50%'")
      vim.cmd("let test#python#runner = 'pytest'")
    end,
}
