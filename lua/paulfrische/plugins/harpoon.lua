return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    -- use ALT/META as prefix for harpoon
    vim.keymap.set('n', '<M-a>', require('harpoon.mark').add_file)
    vim.keymap.set('n', '<M-n>', require('harpoon.ui').nav_next)
    vim.keymap.set('n', '<M-p>', require('harpoon.ui').nav_prev)
    vim.keymap.set('n', '<M-m>', require('harpoon.ui').toggle_quick_menu)
  end
}
