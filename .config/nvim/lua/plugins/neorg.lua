return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
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
          ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
          ["core.export"] = {},
          ["core.export.markdown"] = { config = { extensions = "all" } },
          ["core.summary"] = {},
          ["core.tangle"] = { config = { report_on_empty = false } },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
        },
      })
    end,
  },
}
