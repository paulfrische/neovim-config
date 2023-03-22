return {
  'echasnovski/mini.nvim',
  event = 'UIEnter',
  config = function()
    require('mini.surround').setup()
    require('mini.comment').setup()
  end,
}
