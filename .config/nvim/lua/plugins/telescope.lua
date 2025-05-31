return {
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    version = false,
    lazy = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      "nvim-telescope/telescope-ui-select.nvim",
      'andrew-george/telescope-themes',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { 
            "^.git/",
             "poetry.lock",
            ".venv",
            "node_modules",
            "package-lock.json",
            "__init__.py",
            ".venv",
            "__pycache__",
            ".pytest_cache"
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            theme = "ivy",
          },
          grep_string = {
            theme = "ivy",
          },
          lsp_references = {
            theme = "ivy",
          },
          lsp_incoming_calls = {
            theme = "ivy",
          },
          lsp_implementations = {
            theme = "ivy",
          },
          lsp_definitions = {
            theme = "ivy",
          },
          lsp_type_definitions = {
            theme = "ivy",
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_ivy({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("fzf")
    end,
  },
}
