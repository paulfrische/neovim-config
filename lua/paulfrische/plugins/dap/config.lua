local M = {}

local input_factory = function (prompt)
  return function ()
    return vim.fn.input(prompt)
  end
end

M._debugging = false

M.start_debugging = function()
  require('dapui').open()
  require('dap').continue()
end

M.stop_debugging = function()
  require('dapui').close()
  require('dap').terminate()
end

M.toggle_debugging = function()
  if M.debugging then
    M.stop_debugging()
  else
    M.start_debugging()
  end
  M.debugging = not M.debugging
end

M.setup_keybinds = function()
  local dap = require('dap')

  vim.keymap.set('n', '<F1>', dap.step_into)
  vim.keymap.set('n', '<F2>', dap.step_over)
  vim.keymap.set('n', '<F3>', dap.step_out)
  vim.keymap.set('n', '<F4>', dap.toggle_breakpoint)
  vim.keymap.set('n', '<F5>', M.start_debugging)
  vim.keymap.set('n', '<F6>', M.toggle_debugging)
end

M.setup_python = function()
  local dap = require('dap')
  -- local python = string.gsub(vim.fn.system('which python'), '\n', '')
  local python = 'python'

  dap.adapters.python = {
    type = 'executable',
    command = python,
    args = { '-m', 'debugpy.adapter' },
  }

  dap.configurations.python = {
    {
      type = 'python',
      request = 'launch',
      name = 'Launch File',
      program = '${file}',
      pythonPath = python
    }
  }
end

M.setup_native = function()
  local dap = require('dap')
  local open_debug = string.gsub(vim.fn.system('which OpenDebugAD7'), '\n', '')

  dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = open_debug,
  }

  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "cppdbg",
      request = "launch",
      program = function ()
        return input_factory('Path to executable: ')
      end,
      cwd = '${workspaceFolder}',
      stopAtEntry = true,
    }
  }

  dap.configurations.c = {
    {
      name = "Launch file",
      type = "cppdbg",
      request = "launch",
      program = function ()
        return vim.fn.input('Path to executable: ')
      end,
      cwd = '${workspaceFolder}',
      stopAtEntry = true,
    }
  }

  dap.configurations.rust = {
    {
      name = "Launch file",
      type = "cppdbg",
      request = "launch",
      program = function ()
        local name = vim.fn.input('Binary name: ')
        return 'target/debug/' .. name
      end,
      cwd = '${workspaceFolder}',
      stopAtEntry = true,
    }
  }
end

M.setup = function()
  local dapui = require('dapui')
  local mason = require('mason')

  mason.setup()
  dapui.setup()

  M.setup_python()
  M.setup_native()

  M.setup_keybinds()
end

return M
