local transparent = true

local function color_config()
  vim.opt.termguicolors = true

  require('tokyonight').setup({
    transparent = transparent,
    style = 'night',
  })

  vim.cmd.colorscheme('tokyonight')
end

local themes = {
  'folke/tokyonight.nvim',
}

for idx, theme in ipairs(themes) do
  ---@diagnostic disable-next-line: assign-type-mismatch
  themes[idx] = { theme, lazy = false, priority = 1000, config = color_config }
end

return themes
