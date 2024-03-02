return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("refactoring").setup({
      prompt_func_return_type = {
        python = true
      },
      prompt_func_param_type = {
          python = true
      },
      show_success_message = true
    })
  end,
}
