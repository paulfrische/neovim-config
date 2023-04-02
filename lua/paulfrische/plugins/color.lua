local transparent = false

local function color_config()
  vim.opt.termguicolors = true

  require('tokyonight').setup({
    transparent = transparent,
    style = 'night',
  })

  vim.cmd.colorscheme('catppuccin-mocha')
end

local themes = {
  { 'folke/tokyonight.nvim' },
  { "catppuccin/nvim", name = "catppuccin" }
}

for idx, theme in ipairs(themes) do
  ---@diagnostic disable-next-line: assign-type-mismatch
  themes[idx] = vim.tbl_deep_extend('keep', theme, { lazy = false, priority = 1000, config = color_config })
end

return themes
