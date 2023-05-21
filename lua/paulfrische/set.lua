vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.cmdheight = 0
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.scrolloff = 8
vim.opt.title = true
-- vim.opt.list = true
-- vim.opt.listchars:append('trail:·')
-- vim.opt.fillchars:append('eob: ')
vim.opt.undofile = true
vim.opt.colorcolumn = '80'
vim.opt.cursorline = true
vim.opt.updatetime = 1000
vim.opt.swapfile = false
vim.opt.signcolumn = "yes"

-- alias :Q to :qa!
vim.api.nvim_create_user_command('Q', 'qa!', {})
