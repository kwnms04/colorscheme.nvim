local M = {}

function M.get(c, opts)
  local bg = opts.transparent and c.none or c.bg
  local bg_side = opts.transparent and c.none or c.bg_float

  return {
    Normal = { fg = c.fg, bg = bg },
    NormalNC = { fg = c.fg, bg = bg },
    NormalFloat = { fg = c.fg, bg = c.bg_float },
    FloatBorder = { fg = c.border, bg = c.bg_float },
    FloatTitle = { fg = c.func, bg = c.bg_float, bold = true },
    FloatFooter = { fg = c.fg_gutter, bg = c.bg_float },
    NormalSB = { fg = c.fg_dim, bg = bg_side },

    Cursor = { fg = c.bg, bg = c.fg },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    TermCursor = { link = "Cursor" },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { bg = c.bg_highlight },
    ColorColumn = { bg = c.bg_highlight },
    CursorLineNr = { fg = c.fg_bright, bg = c.bg_highlight, bold = true },
    CursorLineSign = { bg = c.bg_highlight },
    CursorLineFold = { fg = c.comment, bg = c.bg_highlight },
    LineNr = { fg = c.fg_gutter },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },
    SignColumn = { fg = c.fg_gutter, bg = c.none },
    FoldColumn = { fg = c.comment, bg = c.none },
    Folded = { fg = c.fg_gutter, bg = c.bg_highlight },

    Visual = { bg = c.bg_visual },
    VisualNOS = { link = "Visual" },
    Search = { fg = c.fg, bg = c.search },
    IncSearch = { fg = c.bg_dark, bg = c.cur_search },
    CurSearch = { link = "IncSearch" },
    Substitute = { fg = c.bg_dark, bg = c.error },
    MatchParen = { fg = c.number, bg = c.bg_sel, bold = true },

    NonText = { fg = c.nontext },
    Whitespace = { fg = c.nontext },
    SpecialKey = { fg = c.nontext },
    EndOfBuffer = { fg = c.bg },
    Conceal = { fg = c.comment },

    WinSeparator = { fg = c.separator, bold = true },
    VertSplit = { link = "WinSeparator" },
    WinBar = { fg = c.fg_dim, bg = c.none, bold = true },
    WinBarNC = { fg = c.comment, bg = c.none },

    StatusLine = { fg = c.fg_dim, bg = c.bg_dark },
    StatusLineNC = { fg = c.comment, bg = c.bg_dark },
    TabLine = { fg = c.fg_gutter, bg = c.bg_dark },
    TabLineSel = { fg = c.fg, bg = c.bg, bold = true },
    TabLineFill = { bg = c.bg_dark },

    Pmenu = { fg = c.fg, bg = c.bg_float },
    PmenuSel = { bg = c.bg_sel, bold = true },
    PmenuKind = { fg = c.type, bg = c.bg_float },
    PmenuKindSel = { fg = c.type, bg = c.bg_sel },
    PmenuExtra = { fg = c.comment, bg = c.bg_float },
    PmenuExtraSel = { fg = c.comment, bg = c.bg_sel },
    PmenuSbar = { bg = c.bg_float },
    PmenuThumb = { bg = c.border },
    PmenuMatch = { fg = c.func, bold = true },
    PmenuMatchSel = { fg = c.func, bold = true },
    WildMenu = { link = "PmenuSel" },

    Title = { fg = c.func, bold = true },
    Directory = { fg = c.func },
    ModeMsg = { fg = c.fg, bold = true },
    MsgArea = { fg = c.fg },
    MoreMsg = { fg = c.ok },
    Question = { fg = c.ok },
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warn },
    QuickFixLine = { bg = c.bg_sel, bold = true },

    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warn, undercurl = true },
    SpellLocal = { sp = c.info, undercurl = true },
    SpellRare = { sp = c.hint, undercurl = true },

    DiffAdd = { bg = c.diff_add },
    DiffDelete = { bg = c.diff_delete },
    DiffChange = { bg = c.diff_change },
    DiffText = { bg = c.diff_text },
    Added = { fg = c.git_add },
    Changed = { fg = c.git_change },
    Removed = { fg = c.git_delete },
    diffAdded = { fg = c.git_add },
    diffRemoved = { fg = c.git_delete },
    diffChanged = { fg = c.git_change },
    diffFile = { fg = c.func, bold = true },
    diffLine = { fg = c.comment },
    diffIndexLine = { fg = c.keyword },

    healthError = { fg = c.error },
    healthWarning = { fg = c.warn },
    healthSuccess = { fg = c.ok },
  }
end

return M
