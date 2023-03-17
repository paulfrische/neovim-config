return {
  'mfussenegger/nvim-dap',
  config = require('pythonpizza.plugins.dap.config').setup,
  dependencies = {
    { 'rcarriga/nvim-dap-ui' },
    { 'williamboman/mason.nvim' },
  },
}
