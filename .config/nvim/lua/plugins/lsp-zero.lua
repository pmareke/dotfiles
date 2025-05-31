return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
    init = function()
      vim.g.lsp_zero_extend_cmp = 0
      vim.g.lsp_zero_extend_lspconfig = 0
    end,
  },
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = true,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'honza/vim-snippets'
      },
    },
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_cmp()
      local cmp = require('cmp')
      local cmp_action = lsp_zero.cmp_action()
      require('luasnip.loaders.from_snipmate').lazy_load()
      cmp.setup({
        formatting = lsp_zero.cmp_format(),
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp_action.luasnip_supertab(),
          ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
          ['<C-f>'] = cmp_action.luasnip_jump_forward(),
          ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        }),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'nvim_lua' },
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'path' },
          { name = 'calc' },
          { name = 'emoji' },
          { name = 'treesitter' },
          { name = 'crates' },
          { name = 'tmux' },
          { name = 'copilot'},
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'b0o/schemastore.nvim' },
    },
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.on_attach(function(_, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })
        opts = { buffer = bufnr, silent = true }
        vim.lsp.inlay_hint.enable(true)
        vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        vim.keymap.set('n', 'gA', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        vim.keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>', opts)
        vim.keymap.set('n', 'gs', ':Telescope grep_string<CR>', opts)
        vim.keymap.set('n', 'gu', ':Telescope lsp_incoming_calls<CR>', opts)
        vim.keymap.set('n', 'gx', ':URLOpenUnderCursor<CR>')
        vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
        vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
      end)

      local lspconfig = require('lspconfig')

      lspconfig.pyright.setup({
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
      })

      lspconfig.jsonls.setup {
        settings = {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
          },
        },
      }

      lspconfig.yamlls.setup {
        settings = {
          yaml = {
            schemaStore = {
              enable = false,
              url = '',
            },
            schemas = require('schemastore').yaml.schemas(),
          },
        },
      }

      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = {
          'jsonls',
          'yamlls',
          'pyright',
          'ruff',
          'ty',
          'rust_analyzer',
        },
        handlers = {
          lsp_zero.default_setup,
          lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            lspconfig.lua_ls.setup(lua_opts)
          end,
        },
      })

      lsp_zero.format_on_save({
        format_opts = {
          async = false,
          timeout_ms = 10000,
        },
        servers = {
          ['ruff'] = { 'python' },
          ['rust_analyzer'] = { 'rust' },
        }
      })

      lsp_zero.set_preferences({
        suggest_lsp_servers = false,
      })

      vim.diagnostic.config({
        signs            = true,
        severity_sort    = true,
        underline        = true,
        title            = false,
        virtual_text     = false,
        update_in_insert = false,
        float            = {
          source = 'always',
          style = 'minimal',
          border = 'rounded',
          header = '',
          prefix = '',
        },
      })

      lsp_zero.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»',
      })
      
      vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
        pattern = { '*.py' },
        callback = function()
          vim.lsp.buf.code_action {
            context = {
              only = { 'source.organizeImports.ruff' },
            },
            apply = true,
          }
          vim.lsp.buf.format({async = true})
        end,
      })
    end
  },
}
