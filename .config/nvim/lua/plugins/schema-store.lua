return {
    "b0o/schemastore.nvim",
    config = function()
      require('lspconfig').jsonls.setup {
        settings = {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
          },
        },
      }
      require('lspconfig').yamlls.setup {
        settings = {
          yaml = {
            schemas = require('schemastore').yaml.schemas(),
            validate = { enable = true },
          },
        },
      }
    end
}
