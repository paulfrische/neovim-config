return {
  'tjdevries/colorbuddy.nvim',
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    vim.opt.termguicolors = true

    local Color, colors, Group, groups, styles = require('colorbuddy').setup()

    -- tomorrow
    Color.new('background', '#27292c')
    Color.new('foreground', '#d7dad8')

    Color.new('selction', '#474c52')
    Color.new('current_line', '#35383c')

    Color.new('grey', '#a7a8a7')
    Color.new('red', '#d77c79')
    Color.new('orange', '#e6a472')
    Color.new('yellow', '#f4cf86')
    Color.new('green', '#c2c77b')
    Color.new('aqua', '#9ac9c4')
    Color.new('blue', '#92b2ca')
    Color.new('purple', '#c0a7c7')

    Group.new('TabLineSel', colors.foreground, colors.selection)
    Group.new('TabLineSelSeparator', colors.grey, colors.selection)
    Group.new('TabLine', colors.fg, colors.current_line)
    Group.new('TabLineSeparator', colors.grey, colors.background)
    Group.new('TabLineFill', colors.background, colors.background)

    Group.new('Conceal', colors.aqua, colors.background)
    Group.new('VertSplit', colors.grey, colors.background)

    Group.new('Normal', colors.foreground, colors.background)
    Group.new('Function', colors.blue, colors.background, styles.bold)
    Group.new('Error', colors.red, colors.background, styles.bold)
    Group.new('ErrorMsg', colors.red, colors.background, styles.bold)
    Group.new('WarningMsg', colors.yellow, colors.background, styles.bold)
    Group.new('Boolean', colors.orange, colors.background, styles.bold)
    Group.new('Character', colors.green, colors.background)
    Group.new('Comment', colors.grey, colors.background, styles.italic)
    Group.new('Conditional', colors.purple, colors.background, styles.bold)
    Group.new(
      'Constant',
      colors.red,
      colors.background,
      styles.italic + styles.bold
    )
    Group.new('Define', colors.purple, colors.background, styles.NONE)
    Group.new('Delimiter', colors.grey, colors.background, styles.NONE)
    Group.new('Exception', colors.red, colors.background, styles.NONE)
    Group.new('Float', colors.aqua, colors.background, styles.NONE)
    Group.new('Identifier', colors.foreground, colors.background, styles.NONE)
    Group.new('Include', colors.blue, colors.background, styles.NONE)
    Group.new('Keyword', colors.purple, colors.background, styles.bold)
    Group.new('Label', groups.Function, groups.Function, groups.Function)
    Group.new('Number', groups.Float, groups.Floatund, groups.Float)
    Group.new('Operator', colors.foreground, colors.background, styles.NONE)
    Group.new('PreProc', groups.Include, groups.Include, groups.Include)
    Group.new(
      'Repeat',
      groups.Conditional,
      groups.Conditional,
      groups.Conditional
    )
    Group.new('Special', colors.red, colors.background, styles.NONE)
    Group.new('SpecialChar', groups.Special, groups.Special, groups.Special)
    Group.new(
      'SpecialComment',
      colors.foreground,
      colors.background,
      styles.italic
    )
    Group.new(
      'Statement',
      groups.Conditional,
      groups.Conditionalound,
      groups.Conditional
    )
    Group.new(
      'StorageClass',
      groups.Conditional,
      groups.Conditionalound,
      groups.Conditional
    )
    Group.new('String', groups.Char, groups.Char, groups.Char)
    Group.new(
      'Structure',
      groups.StorageClass,
      groups.StorageClass,
      groups.StorageClass
    )
    Group.new('Tag', colors.yellow, colors.background, styles.NONE)
    Group.new('Title', colors.red, colors.background)
    Group.new('Todo', colors.blue, colors.background, styles.NONE)
    Group.new('Type', colors.yellow, colors.background, styles.NONE)
    Group.new('Typedef', colors.yellow, colors.background, styles.NONE)
    Group.new(
      'CursorColumn',
      colors.background,
      colors.current_line,
      styles.NONE
    )
    Group.new('LineNr', colors.grey, colors.background, styles.NONE)
    Group.new(
      'CursorLineNr',
      colors.foreground,
      colors.current_line,
      styles.NONE
    )
    Group.new('Line', colors.selection, colors.background, styles.bold)
    Group.new('SignColumn', colors.background, colors.background, styles.NONE)
    Group.new('StatusLine', colors.foreground, colors.selection, styles.NONE)

    Group.new('ColorColumn', colors.background, colors.selection)
    Group.new('Cursor', colors.foreground, colors.foreground)
    Group.new('CursorLine', colors.current_line, colors.current_line)
    Group.new('EndOfBuffer', colors.background, colors.background)
    Group.new('MatchParen', colors.yellow, colors.background)
    Group.new('NonText', colors.background, colors.background)
    Group.new('PMenu', colors.foreground, colors.current_line)
    Group.new('PmenuSbar', groups.PMenu, groups.PMenu)
    Group.new('PMenuSel', colors.foreground, colors.selection)
    Group.new('PmenuThumb', colors.nord_8, colors.nord_3)
    Group.new('SpecialKey', colors.nord_3, colors.nord_3)
    Group.new('SpellBad', colors.nord_11, colors.nord_0)
    Group.new('SpellCap', colors.nord_13, colors.nord_0)
    Group.new('SpellLocal', colors.nord_5, colors.nord_0)
    Group.new('SpellRare', colors.nord_6, colors.nord_0)
    Group.new('Visual', colors.nord_4, colors.nord_9)
    Group.new('VisualNOS', colors.nord_2, colors.nord_1)
    Group.new('Folded', colors.nord_14, colors.background, styles.italic)

    -- "+- Neovim Support -+
    Group.new('healthError', colors.nord_11, colors.nord_1)
    Group.new('healthSuccess', colors.nord_14, colors.nord_1)
    Group.new('healthWarning', colors.nord_13, colors.nord_1)
    Group.new('TermCursorNC', colors.nord_1, colors.nord_1)
    Group.new('IncSearch', colors.nord_6, colors.nord_10, styles.underline)
    Group.new('Search', colors.nord_1, colors.nord_8)

    -- vim
    Group.new('vimcommand', groups.Statement, colors.background)
    Group.new('vimLet', groups.vimcommand, colors.background)
    Group.new('vimFuncVar', groups.identifier, colors.background)
    Group.new('vimCommentTitle', groups.PreProc, colors.background)
    Group.new('vimIsCommand', colors.background, colors.background)
    Group.new('vimFuncSID', groups.Special, colors.background)
    Group.new('vimMapModKey', groups.vimFuncSID, colors.background)
    Group.new('vimMapLhs', colors.background, colors.background)
    Group.new('vimNotation', colors.nord_7, colors.background)
    Group.new('vimBracket', groups.Delimiter, colors.background)
    Group.new('vimMap', groups.vimcommand, colors.background)
    Group.new('nvimMap', groups.vimMap, colors.background)

    -- startify
    Group.new('StartifyFile', colors.nord_6, colors.background)
    Group.new('StartifyFooter', colors.background, colors.background)
    Group.new('StartifyHeader', colors.nord_8, colors.background)
    Group.new('StartifyNumber', colors.nord_7, colors.background)
    Group.new('StartifyPath', colors.nord_8, colors.background)
    Group.new('StartifyBracket', groups.Delimiter, groups.Delimiter)
    Group.new('StartifySlash', groups.Normal, groups.Normal)
    Group.new('StartifySpecial', groups.Comment, groups.Comment)

    -- gitgutter
    Group.new('GitGutterAdd', colors.nord_14, colors.background)
    Group.new('GitGutterDelete', colors.nord_11, colors.background)
    Group.new('GitGutterChange', colors.nord_13, colors.background)
    Group.new('GitGutterChangeDelete', colors.nord_11, colors.background)

    -- built-in LSP
    Group.new('DiagnosticWarn', colors.nord_13, colors.background)
    Group.new('DiagnosticError', colors.nord_11, colors.background)
    Group.new('DiagnosticInfo', colors.nord_8, colors.background)
    Group.new('DiagnosticHint', colors.nord_10, colors.background)

    Group.new('LSPReferenceText', colors.background, colors.background)
    Group.new(
      'LSPReferenceRead',
      colors.background,
      colors.background,
      styles.bold
    )
    Group.new(
      'LSPReferenceWrite',
      colors.nord_9,
      colors.background,
      styles.bold
    )

    -- Markdown
    Group.new('markdownError', colors.nord_4, colors.background)

    Group.new('CmpItemAbbr', colors.nord_4, colors.background)
    Group.new('CmpItemKind', colors.nord_13, colors.background)
    Group.new('CmpItemMenu', colors.nord_7, colors.background)
  end,
}
