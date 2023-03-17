return {
  'stevearc/dressing.nvim',
  config = function()
    require('dressing').setup({
      input = {
        enabled = true,
        prompt_align = 'center',
        anchor = 'NW',
        relative = 'win',
      },
    })
  end,
}
