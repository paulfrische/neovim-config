return {
  'akinsho/toggleterm.nvim',
  cmd = 'ToggleTerm',
  keys={'<leader>t'},
  config = function()
    require('toggleterm').setup()
  end,
}
