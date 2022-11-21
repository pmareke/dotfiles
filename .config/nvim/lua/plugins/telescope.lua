-- Telescope
local actions = require("telescope.actions")
require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
	width = 0.8,
        preview_cutoff = 10,
	height = 0.9
      }
    },
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


