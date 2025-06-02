return {
  "nvim-neorg/neorg",
  dependencies = {
    "luarocks.nvim",
    "nvim.lua/plenary.nvim",
    "nvim-neorg/neorg-telescope"
  },
  lazy = false,
  version = "*",
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.ui.calendar"] = {},
        ["core.qol.toc"] = {},
        ["core.qol.todo_items"] = {},
        ["core.looking-glass"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes",
            },
            default_workspace = "notes",
          },
        },
        ["core.integrations.telescope"] = {
          config = {
              insert_file_link = {
                  -- Whether to show the title preview in telescope. Affects performance with a large
                  -- number of files.
                  show_title_preview = true,
              },
          }
        }
      },
    })
  end,
  run = ":Neorg sync-parsers",
}
