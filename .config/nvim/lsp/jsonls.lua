return {
  cmd = { "vscode-json-language-server", "--stdio" },
  filetypes = { "json", "jsonc" },
  root_markers = { ".git" },
  settings = {
    json = {
      schemas = require('schemastore').json.schemas {
        extra = {
          {
            description = 'Runtime',
            fileMatch = '.run.yaml',
            name = '.run.yaml',
            url = 'https://example.com/schema/foo.json',
          },
        }
      },
      validate = { enable = true },
    },
  },
}
