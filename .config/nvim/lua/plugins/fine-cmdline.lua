return {
  'VonHeikemen/fine-cmdline.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim'
  },
  config = function()
    require('fine-cmdline').setup({
      cmdline = {
        prompt = '> '
      },
      popup = {
        position = {
          row = '50%',
          col = '50%',
        },
        size = {
          width = '50%',
        },
      },
    })
  end,
}
