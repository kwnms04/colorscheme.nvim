-- Highlights for popular plugins.
local M = {}

-- completion item kind -> color token
local function kinds(c)
  return {
    Text = c.fg,
    Method = c.func,
    Function = c.func,
    Constructor = c.type,
    Field = c.property,
    Variable = c.fg,
    Class = c.type,
    Interface = c.type,
    Module = c.module,
    Property = c.property,
    Unit = c.number,
    Value = c.number,
    Enum = c.type,
    Keyword = c.keyword,
    Snippet = c.special,
    Color = c.special,
    File = c.fg_dim,
    Reference = c.special,
    Folder = c.func,
    EnumMember = c.constant,
    Constant = c.constant,
    Struct = c.type,
    Event = c.warn,
    Operator = c.operator,
    TypeParameter = c.type,
    Copilot = c.hint,
    Array = c.punctuation,
    Boolean = c.number,
    Key = c.property,
    Namespace = c.module,
    Null = c.constant,
    Number = c.number,
    Object = c.constant,
    Package = c.module,
    String = c.string,
  }
end

function M.get(c, opts)
  local bg_side = opts.transparent and c.none or c.bg_float
  local hl = {
    -- gitsigns
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },
    GitSignsAddInline = { bg = c.palette.green[900] },
    GitSignsChangeInline = { bg = c.diff_text },
    GitSignsDeleteInline = { bg = c.palette.red[900] },
    GitSignsCurrentLineBlame = { fg = c.comment },

    -- telescope
    TelescopeNormal = { link = "NormalFloat" },
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeTitle = { link = "FloatTitle" },
    TelescopePromptPrefix = { fg = c.func },
    TelescopeSelection = { bg = c.bg_sel },
    TelescopeSelectionCaret = { fg = c.func, bg = c.bg_sel },
    TelescopeMatching = { fg = c.func, bold = true },
    TelescopeMultiSelection = { fg = c.keyword },

    -- nvim-cmp
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.comment, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.func, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.func, bold = true },
    CmpItemMenu = { fg = c.comment },
    CmpItemKindDefault = { fg = c.fg_dim },

    -- blink.cmp
    BlinkCmpMenu = { link = "Pmenu" },
    BlinkCmpMenuBorder = { link = "FloatBorder" },
    BlinkCmpMenuSelection = { link = "PmenuSel" },
    BlinkCmpLabel = { fg = c.fg },
    BlinkCmpLabelDeprecated = { fg = c.comment, strikethrough = true },
    BlinkCmpLabelMatch = { fg = c.func, bold = true },
    BlinkCmpLabelDetail = { fg = c.comment },
    BlinkCmpLabelDescription = { fg = c.comment },
    BlinkCmpSource = { fg = c.comment },
    BlinkCmpGhostText = { fg = c.comment },
    BlinkCmpDoc = { link = "NormalFloat" },
    BlinkCmpDocBorder = { link = "FloatBorder" },
    BlinkCmpSignatureHelp = { link = "NormalFloat" },
    BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },

    -- which-key
    WhichKey = { fg = c.func },
    WhichKeyGroup = { fg = c.keyword },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyValue = { fg = c.comment },
    WhichKeyNormal = { link = "NormalFloat" },
    WhichKeyBorder = { link = "FloatBorder" },

    -- indent-blankline
    IblIndent = { fg = c.bg_sel, nocombine = true },
    IblWhitespace = { fg = c.bg_sel, nocombine = true },
    IblScope = { fg = c.fg_gutter, nocombine = true },

    -- snacks.indent
    SnacksIndent = { fg = c.bg_sel },
    SnacksIndentScope = { fg = c.fg_gutter },
    SnacksIndentChunk = { link = "SnacksIndentScope" },

    -- nvim-tree
    NvimTreeNormal = { fg = c.fg_dim, bg = bg_side },
    NvimTreeNormalNC = { link = "NvimTreeNormal" },
    NvimTreeWinSeparator = { fg = c.separator, bg = bg_side },
    NvimTreeCursorLine = { bg = c.bg_sel },
    NvimTreeRootFolder = { fg = c.func, bold = true },
    NvimTreeFolderName = { fg = c.func },
    NvimTreeFolderIcon = { fg = c.func },
    NvimTreeOpenedFolderName = { fg = c.func, bold = true },
    NvimTreeIndentMarker = { fg = c.nontext },
    NvimTreeGitDirty = { fg = c.git_change },
    NvimTreeGitNew = { fg = c.git_add },
    NvimTreeGitDeleted = { fg = c.git_delete },
    NvimTreeSpecialFile = { fg = c.keyword, underline = true },

    -- neo-tree
    NeoTreeNormal = { fg = c.fg_dim, bg = bg_side },
    NeoTreeNormalNC = { link = "NeoTreeNormal" },
    NeoTreeWinSeparator = { fg = c.separator, bg = bg_side },
    NeoTreeCursorLine = { bg = c.bg_sel },
    NeoTreeRootName = { fg = c.func, bold = true },
    NeoTreeDirectoryName = { fg = c.func },
    NeoTreeDirectoryIcon = { fg = c.func },
    NeoTreeIndentMarker = { fg = c.nontext },
    NeoTreeGitAdded = { fg = c.git_add },
    NeoTreeGitModified = { fg = c.git_change },
    NeoTreeGitDeleted = { fg = c.git_delete },
    NeoTreeGitUntracked = { fg = c.special },
    NeoTreeDimText = { fg = c.comment },

    -- snacks.nvim
    SnacksDashboardHeader = { fg = c.func },
    SnacksDashboardIcon = { fg = c.func },
    SnacksDashboardKey = { fg = c.number },
    SnacksDashboardDesc = { fg = c.fg_dim },
    SnacksDashboardSpecial = { fg = c.keyword },
    SnacksDashboardTitle = { fg = c.type, bold = true },
    SnacksDashboardFooter = { fg = c.comment },
    SnacksDashboardDir = { fg = c.comment },
    SnacksInputIcon = { fg = c.func },
    SnacksPickerPickWin = { fg = c.bg_dark, bg = c.warn, bold = true },
    SnacksPickerPickWinCurrent = { fg = c.bg_dark, bg = c.number, bold = true },

    -- noice.nvim
    NoiceCmdlineIconInput = { fg = c.warn },
    NoiceCmdlinePopupBorderInput = { fg = c.warn },
    NoiceCmdlinePopupTitleInput = { fg = c.warn },
    NoiceCmdlineIconLua = { fg = c.hint },
    NoiceCmdlinePopupBorderLua = { fg = c.hint },
    NoiceCmdlinePopupTitleLua = { fg = c.hint },
    NoiceCompletionItemKindDefault = { fg = c.fg_dim },

    -- mason.nvim
    MasonHeader = { fg = c.bg_dark, bg = c.func, bold = true },
    MasonHeaderSecondary = { fg = c.bg_dark, bg = c.hint, bold = true },
    MasonHeading = { fg = c.func, bold = true },
    MasonHighlight = { fg = c.ok },
    MasonHighlightBlock = { fg = c.bg_dark, bg = c.ok },
    MasonHighlightBlockBold = { fg = c.bg_dark, bg = c.ok, bold = true },
    MasonHighlightSecondary = { fg = c.keyword },
    MasonHighlightBlockSecondary = { fg = c.bg_dark, bg = c.func },
    MasonHighlightBlockBoldSecondary = { fg = c.bg_dark, bg = c.func, bold = true },
    MasonMuted = { fg = c.comment },
    MasonMutedBlock = { fg = c.fg_dim, bg = c.bg_sel },
    MasonMutedBlockBold = { fg = c.bg_dark, bg = c.warn, bold = true },
    MasonError = { fg = c.error },

    -- mini.nvim
    MiniClueBorder = { link = "FloatBorder" },
    MiniClueDescGroup = { fg = c.keyword },
    MiniClueDescSingle = { link = "NormalFloat" },
    MiniClueNextKey = { fg = c.func, bold = true },
    MiniClueNextKeyWithPostkeys = { fg = c.error, bold = true },
    MiniClueSeparator = { fg = c.comment },
    MiniClueTitle = { link = "FloatTitle" },
    MiniCursorword = { bg = c.bg_sel },
    MiniCursorwordCurrent = { bg = c.bg_sel },
    MiniDiffSignAdd = { fg = c.git_add },
    MiniDiffSignChange = { fg = c.git_change },
    MiniDiffSignDelete = { fg = c.git_delete },
    MiniDiffOverAdd = { link = "DiffAdd" },
    MiniDiffOverChange = { link = "DiffText" },
    MiniDiffOverContext = { link = "DiffChange" },
    MiniDiffOverDelete = { link = "DiffDelete" },
    MiniFilesBorder = { link = "FloatBorder" },
    MiniFilesBorderModified = { fg = c.warn, bg = c.bg_float },
    MiniFilesCursorLine = { bg = c.bg_sel },
    MiniFilesDirectory = { link = "Directory" },
    MiniFilesFile = { fg = c.fg },
    MiniFilesNormal = { link = "NormalFloat" },
    MiniFilesTitle = { fg = c.fg_gutter, bg = c.bg_float },
    MiniFilesTitleFocused = { link = "FloatTitle" },
    MiniIndentscopeSymbol = { fg = c.fg_gutter, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true },
    MiniJump = { fg = c.bg_dark, bg = c.number },
    MiniNotifyBorder = { link = "FloatBorder" },
    MiniNotifyNormal = { link = "NormalFloat" },
    MiniNotifyTitle = { link = "FloatTitle" },
    MiniPickBorder = { link = "FloatBorder" },
    MiniPickBorderBusy = { fg = c.warn, bg = c.bg_float },
    MiniPickBorderText = { fg = c.hint, bg = c.bg_float },
    MiniPickHeader = { fg = c.hint, bg = c.bg_float },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile = { link = "MiniPickNormal" },
    MiniPickMatchCurrent = { bg = c.bg_sel },
    MiniPickMatchMarked = { link = "Visual" },
    MiniPickMatchRanges = { fg = c.func, bold = true },
    MiniPickNormal = { link = "NormalFloat" },
    MiniPickPreviewLine = { bg = c.bg_highlight },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt = { fg = c.info, bg = c.bg_float },
    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = c.comment, italic = true },
    MiniStarterHeader = { fg = c.func },
    MiniStarterInactive = { fg = c.comment },
    MiniStarterItem = { fg = c.fg },
    MiniStarterItemBullet = { fg = c.border },
    MiniStarterItemPrefix = { fg = c.warn },
    MiniStarterQuery = { fg = c.info },
    MiniStarterSection = { fg = c.keyword },
    MiniStatuslineModeNormal = { fg = c.bg_dark, bg = c.func, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg_dark, bg = c.string, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg_dark, bg = c.keyword, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg_dark, bg = c.error, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg_dark, bg = c.type, bold = true },
    MiniStatuslineModeOther = { fg = c.bg_dark, bg = c.hint, bold = true },
    MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg_surface },
    MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg_surface },
    MiniStatuslineFilename = { fg = c.fg_dim, bg = c.bg_dark },
    MiniStatuslineInactive = { fg = c.comment, bg = c.bg_dark },
    MiniSurround = { fg = c.bg_dark, bg = c.number },
    MiniTablineCurrent = { fg = c.fg, bg = c.bg, bold = true },
    MiniTablineVisible = { fg = c.fg_dim, bg = c.bg_dark },
    MiniTablineHidden = { fg = c.fg_gutter, bg = c.bg_dark },
    MiniTablineModifiedCurrent = { fg = c.warn, bg = c.bg, bold = true },
    MiniTablineModifiedVisible = { fg = c.warn, bg = c.bg_dark },
    MiniTablineModifiedHidden = { fg = c.palette.yellow[700], bg = c.bg_dark },
    MiniTablineFill = { bg = c.bg_dark },
    MiniTrailspace = { bg = c.error },

    -- trouble.nvim
    TroubleNormal = { fg = c.fg, bg = bg_side },
    TroubleNormalNC = { link = "TroubleNormal" },
    TroubleText = { fg = c.fg_dim },
    TroubleCount = { fg = c.keyword, bg = c.bg_sel },

    -- flash.nvim
    FlashBackdrop = { fg = c.comment },
    FlashLabel = { fg = c.bg_dark, bg = c.number, bold = true },

    -- lazy.nvim
    LazyButton = { bg = c.bg_highlight },
    LazyButtonActive = { fg = c.bg_dark, bg = c.func, bold = true },
    LazyH1 = { fg = c.bg_dark, bg = c.func, bold = true },
    LazySpecial = { fg = c.func },
    LazyProgressDone = { fg = c.ok },
    LazyProgressTodo = { fg = c.nontext },

    -- mini.icons
    MiniIconsAzure = { fg = c.palette.blue[400] },
    MiniIconsBlue = { fg = c.palette.blue[400] },
    MiniIconsCyan = { fg = c.palette.cyan[400] },
    MiniIconsGreen = { fg = c.palette.green[400] },
    MiniIconsGrey = { fg = c.fg_dim },
    MiniIconsOrange = { fg = c.palette.orange[400] },
    MiniIconsPurple = { fg = c.palette.magenta[400] },
    MiniIconsRed = { fg = c.palette.red[400] },
    MiniIconsYellow = { fg = c.palette.yellow[400] },
  }

  for kind, color in pairs(kinds(c)) do
    hl["LspKind" .. kind] = { fg = color }
    hl["CmpItemKind" .. kind] = { link = "LspKind" .. kind }
    hl["BlinkCmpKind" .. kind] = { link = "LspKind" .. kind }
    hl["NoiceCompletionItemKind" .. kind] = { link = "LspKind" .. kind }
  end

  -- notifications: snacks.notifier and nvim-notify share the level colors
  local p = c.palette
  local levels = {
    Error = { c.error, p.red[700] },
    Warn = { c.warn, p.yellow[700] },
    Info = { c.info, p.blue[700] },
    Debug = { c.debug, c.border },
    Trace = { c.trace, p.magenta[700] },
  }
  for level, color in pairs(levels) do
    local fg, border = color[1], color[2]
    hl["SnacksNotifier" .. level] = { fg = c.fg, bg = c.bg_float }
    hl["SnacksNotifierBorder" .. level] = { fg = border, bg = c.bg_float }
    hl["SnacksNotifierIcon" .. level] = { fg = fg }
    hl["SnacksNotifierTitle" .. level] = { fg = fg }
    local up = level:upper()
    hl["Notify" .. up .. "Body"] = { fg = c.fg, bg = c.bg_float }
    hl["Notify" .. up .. "Border"] = { fg = border, bg = c.bg_float }
    hl["Notify" .. up .. "Icon"] = { fg = fg }
    hl["Notify" .. up .. "Title"] = { fg = fg }
  end
  hl.NotifyBackground = { bg = c.bg_float }

  return hl
end

return M
