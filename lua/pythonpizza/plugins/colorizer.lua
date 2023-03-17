return {
  'norcalli/nvim-colorizer.lua',
  event = 'UIEnter',
  config = function()
    require('colorizer').setup({
      '*',
    }, { mode = 'foreground' })
  end,
}
