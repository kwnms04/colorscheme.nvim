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
    Module = c.type,
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
    TelescopeBorder = { fg = c.bg_float, bg = c.bg_float },
    TelescopeTitle = { fg = c.bg_dark, bg = c.func, bold = true },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_highlight },
    TelescopePromptBorder = { fg = c.bg_highlight, bg = c.bg_highlight },
    TelescopePromptTitle = { fg = c.bg_dark, bg = c.func, bold = true },
    TelescopePreviewTitle = { fg = c.bg_dark, bg = c.ok, bold = true },
    TelescopeResultsTitle = { fg = c.bg_float, bg = c.bg_float },
    TelescopePromptPrefix = { fg = c.func, bg = c.bg_highlight },
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
    IblScope = { fg = c.border, nocombine = true },

    -- nvim-tree
    NvimTreeNormal = { fg = c.fg_dim, bg = bg_side },
    NvimTreeNormalNC = { link = "NvimTreeNormal" },
    NvimTreeWinSeparator = { fg = bg_side, bg = bg_side },
    NvimTreeEndOfBuffer = { fg = bg_side },
    NvimTreeCursorLine = { bg = c.bg },
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
    NeoTreeWinSeparator = { fg = bg_side, bg = bg_side },
    NeoTreeEndOfBuffer = { fg = bg_side },
    NeoTreeCursorLine = { bg = c.bg },
    NeoTreeRootName = { fg = c.func, bold = true },
    NeoTreeDirectoryName = { fg = c.func },
    NeoTreeDirectoryIcon = { fg = c.func },
    NeoTreeIndentMarker = { fg = c.nontext },
    NeoTreeGitAdded = { fg = c.git_add },
    NeoTreeGitModified = { fg = c.git_change },
    NeoTreeGitDeleted = { fg = c.git_delete },
    NeoTreeGitUntracked = { fg = c.special },
    NeoTreeDimText = { fg = c.comment },

    -- snacks.nvim picker / explorer: borderless, prompt raised, titles as pills
    SnacksPickerBorder = { fg = c.bg_float, bg = c.bg_float },
    SnacksPickerTitle = { fg = c.bg_dark, bg = c.func, bold = true },
    SnacksPickerPreviewTitle = { fg = c.bg_dark, bg = c.ok, bold = true },
    SnacksPickerInput = { fg = c.fg, bg = c.bg_highlight },
    SnacksPickerInputBorder = { fg = c.bg_highlight, bg = c.bg_highlight },
    SnacksPickerListCursorLine = { bg = c.bg },
    SnacksWinSeparator = { fg = bg_side, bg = bg_side },

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
    hl["CmpItemKind" .. kind] = { fg = color }
    hl["BlinkCmpKind" .. kind] = { fg = color }
  end

  return hl
end

return M
