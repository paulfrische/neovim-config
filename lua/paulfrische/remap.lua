-- put the cursor in the center of the screen when searching/jumping aroundremap
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- deleting/pasting in visualmode without yanking
vim.keymap.set('v', 'D', '"_d')
vim.keymap.set('v', 'P', '"_dp')

-- remove search highlights in normal mode
vim.keymap.set('n', '<ESC>', ':noh<CR>:echo<CR>')

-- code runner
vim.keymap.set('n', '<leader>c', ':Jaq<CR>')

-- terminal
vim.keymap.set('n', '<leader>t', ':ToggleTerm direction=float<CR>')

-- lazygit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>')

-- move around text in visual-mode
vim.keymap.set('v', '<C-j>', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', '<C-k>', ':m \'<-2<CR>gv=gv')

-- file explorer
vim.keymap.set('n', '<leader>x', ':NvimTreeToggle<CR>')

-- no neck pain
vim.keymap.set('n', '<leader>z', ':ZenMode<CR>')

-- escape terminal
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- splits
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<leader>h', '<cmd>split<CR>')
vim.keymap.set('n', '<leader>v', '<cmd>vsplit<CR>')

-- source selected lua code
vim.keymap.set(
  { 'v', 'vs', 'V', 'Vs' },
  '<leader>l',
  require('paulfrische.util').source_selected
)
