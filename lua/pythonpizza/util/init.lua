local M = {}

M.print_table = function(v)
  print(vim.inspect(v))
  return v
end

M.words_in_buffer = function()
  local words = 0
  local text = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  for _, line in ipairs(text) do
    for _ in line:gmatch("%S+") do
      words = words + 1
    end
  end
  return words
end

-- TODO: fix this
M.source_selected = function ()
  -- nvim_buf_get_text({buffer}, {start_row}, {start_col}, {end_row}, {end_col}, {opts})
  local start = vim.api.nvim_buf_get_mark(0, '<')
  local stop = vim.api.nvim_buf_get_mark(0, '>')

  local source = vim.api.nvim_buf_get_text(0, start[1], start[2], stop[1], stop[2], {})
  M.print_table(start)
  -- vim.fn.luaeval(source)
end

return M
