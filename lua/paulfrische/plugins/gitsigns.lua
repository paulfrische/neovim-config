return {
  'lewis6991/gitsigns.nvim',
  event = 'VimEnter',
  config = function()
    require('gitsigns').setup()
  end,
}
