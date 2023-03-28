vim.o.clipboard = 'unnamedplus'
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.ignorecase = true
vim.o.wrap = false
vim.o.cmdheight = 0

vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.scrolloff = 10
vim.wo.numberwidth = 4
vim.wo.scrolloff = 8

vim.opt.list = true
vim.opt.title = true
vim.opt.listchars:append('trail:·')
vim.opt.fillchars:append('eob: ')
vim.opt.undofile = true
vim.opt.colorcolumn = '80'

-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

vim.opt.updatetime = 50

-- alias :Q to :qa!
vim.api.nvim_create_user_command('Q', 'qa!', {})
