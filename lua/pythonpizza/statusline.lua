M = {}

function M.Mode()
  local mode_short = vim.api.nvim_get_mode().mode
  return mode_short
end

function MyStatusLine()
  local statusline = ''
  statusline = statusline
    .. '%!v:lua.require(\'pythonpizza.statusline\').Mode()'
  return statusline
end

-- vim.o.statusline = MyStatusLine()

return M
