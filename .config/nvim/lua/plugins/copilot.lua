return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      filetypes = {
        yaml = true,
        markdown = true,
        gitcommit = true,
        hgcommit = true,
        python = true,
        ["."] = false,
      },
    })
  end,
}
