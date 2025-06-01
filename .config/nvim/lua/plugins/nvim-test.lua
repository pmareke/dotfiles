return {
  "klen/nvim-test",
  event = "VeryLazy",
  config = function()
    require('nvim-test').setup({
      termOpts = {
        direction = "horizontal",
        width = 100,
        height = 100,
      },
    })
  end
}
