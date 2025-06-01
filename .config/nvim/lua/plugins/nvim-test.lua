return {
  "klen/nvim-test",
  event = "VeryLazy",
  config = function()
    require('nvim-test').setup({
      silent = true,
      termOpts = {
        direction = "horizontal",
        width = 100,
        height = 100,
      },
    })
  end
}
