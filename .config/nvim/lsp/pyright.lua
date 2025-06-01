return {
  cmd =  { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", ".git" },
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        ignore = { '*' },
        diagnosticMode = 'off',
        typeCheckingMode = 'off'
      },
    },
  },
}
