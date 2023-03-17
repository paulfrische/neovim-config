vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('pythonpizza.plugins')

pcall(require, 'pythonpizza.set')
pcall(require, 'pythonpizza.remap')
pcall(require, 'pythonpizza.statusline')
pcall(require, 'pythonpizza.disable-builtin')
pcall(require, 'pythonpizza.autocommands')
pcall(require, 'pythonpizza.welcome-screen')
