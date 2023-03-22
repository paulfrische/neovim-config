return {
  'mfussenegger/nvim-dap',
  config = require('paulfrische.plugins.dap.config').setup,
  dependencies = {
    { 'rcarriga/nvim-dap-ui' },
    { 'williamboman/mason.nvim' },
  },
}
