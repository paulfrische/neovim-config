local M = {}

M.attach = function()
  local bufmap = function(mode, lhs, rhs)
    local opts = { buffer = true }
    vim.keymap.set(mode, lhs, rhs, opts)
  end

  -- Displays hover information about the symbol under the cursor
  bufmap('n', 'K', vim.lsp.buf.hover)

  -- Jump to the definition
  bufmap('n', 'gd', vim.lsp.buf.definition)

  -- Jump to declaration
  bufmap('n', 'gD', vim.lsp.buf.declaration)

  -- Lists all the implementations for the symbol under the cursor
  bufmap('n', 'gi', vim.lsp.buf.implementation)

  -- Jumps to the definition of the type symbol
  bufmap('n', 'go', vim.lsp.buf.type_definition)

  -- Lists all the references
  bufmap('n', 'gr', vim.lsp.buf.references)

  -- Displays a function's signature information
  bufmap('n', 'gs', vim.lsp.buf.signature_help)

  -- Show diagnostics in a floating window
  bufmap('n', 'gl', vim.diagnostic.open_float)

  -- Move to the previous diagnostic
  bufmap('n', '[d', vim.diagnostic.goto_prev)

  -- Move to the next diagnostic
  bufmap('n', ']d', vim.diagnostic.goto_next)

  -- rename
  bufmap('n', 'gn', vim.lsp.buf.rename)

  -- diagnostics
  bufmap('n', 'ge', require('trouble').open)

  -- format buffer
  bufmap('n', 'gf', vim.lsp.buf.format)

  -- code actions
  bufmap({'n', 'v'}, 'ga', vim.lsp.buf.code_action)
end

M.setup = function()
  require('paulfrische.plugins.lsp.cmp').setup({
    border = ''
  })

  require('mason').setup()
  require('mason-lspconfig').setup()

  require('neodev').setup({
    library = {
      plugins = { 'nvim-dap-ui' },
      types = true,
    }
  })

  require('mason-lspconfig').setup({
    ensure_installed = {
      'rust_analyzer',
      'lua_ls',
      'pylsp',
    },
  })

  local lspconfig = require('lspconfig')
  local lsp_defaults = lspconfig.util.default_config

  lsp_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lsp_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
  )

  require('mason-lspconfig').setup_handlers({
    function(server_name)
      lspconfig[server_name].setup({
        on_attach = M.attach,
        capabilities = lsp_defaults.capabilities,
      })
    end,
  })
end

return M
