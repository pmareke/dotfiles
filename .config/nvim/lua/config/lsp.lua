vim.lsp.enable({
  "lua-language-server",
  "jsonls",
  "yamlls",
  "pyright",
  "ruff",
  "ty",
  "rust_analyzer",
})

vim.lsp.inlay_hint.enable(true)

vim.diagnostic.config({
    virtual_lines = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "✘ ",
            [vim.diagnostic.severity.WARN] = "▲ ",
            [vim.diagnostic.severity.INFO] = "» ",
            [vim.diagnostic.severity.HINT] = "⚑ ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
