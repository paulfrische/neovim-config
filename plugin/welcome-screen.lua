if true then
return
end
-- inspired by https://gitlab.com/4w/neovim-config/-/blob/main/plugin/simple_ascii_dash.lua

-- check if nvim was started without args and return otherwhise
if vim.fn.argc() ~= 0 then
  return
end

-- create and open a scratch buffer
local buffer = vim.api.nvim_create_buf(false, true)
vim.api.nvim_win_set_buf(0, buffer)

function text(line)
  local width = vim.api.nvim_win_get_width(0)
  local padding = math.floor(width / 3)

  if width <= 80 then
    padding = 0
  end

  for i = 1, padding do
    line = ' ' .. line
  end

  return line
end

-- set welcome screen text
vim.api.nvim_buf_set_lines(buffer, 0, -1, false, {
  '',
  '',
  '',
  '',
  '',
  text('__        __   _'),
  text('\\ \\      / /__| | ___ ___  _ __ ___   ___'),
  text(' \\ \\ /\\ / / _ \\ |/ __/ _ \\| \'_ ` _ \\ / _ \\'),
  text('  \\ V  V /  __/ | (_| (_) | | | | | |  __/'),
  text('   \\_/\\_/ \\___|_|\\___\\___/|_| |_| |_|\\___|'),
  text('┏━━━━━━━━┓'),
  text('┃ Neovim ┃'),
  text(
    '┣━━━┯━━━━┻━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓'
  ),
  text('┃ s │ Synchronize/Update Lazy plugins   ┃'),
  text('┃ i │ Switch to insert mode             ┃'),
  text('┃ e │ Get an empty buffer               ┃'),
  text(
    '┠───┼───────────────────────────────────┨'
  ),
  text('┃ q │ Quit Neovim                       ┃'),
  text(
    '┗━━━┷━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛'
  ),
})

-- make buffer read-only
vim.api.nvim_buf_set_option(buffer, 'readonly', true)
vim.api.nvim_buf_set_option(buffer, 'modifiable', false)

-- open empty buffer
vim.keymap.set('n', 'e', function()
  vim.api.nvim_buf_delete(buffer, {})
  local new_buffer = vim.api.nvim_create_buf(true, false)
  vim.api.nvim_win_set_buf(0, new_buffer)
end, { buffer = true })

-- sync
vim.keymap.set('n', 's', '<cmd>Lazy sync<cr>', { buffer = true })

-- quit neovim
vim.keymap.set('n', 'q', '<cmd>qa!<cr>', { buffer = true })
