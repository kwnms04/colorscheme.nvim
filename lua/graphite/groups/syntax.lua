-- Legacy Vim syntax groups. Treesitter and LSP groups link back to these.
local M = {}

function M.get(c, opts)
  local s = opts.styles

  return {
    Comment = vim.tbl_extend("force", { fg = c.comment }, s.comments),
    Constant = { fg = c.constant },
    String = { fg = c.string },
    Character = { fg = c.string },
    Number = { fg = c.number },
    Boolean = { fg = c.number },
    Float = { fg = c.number },

    Identifier = vim.tbl_extend("force", { fg = c.fg }, s.variables),
    Function = vim.tbl_extend("force", { fg = c.func }, s.functions),

    Statement = vim.tbl_extend("force", { fg = c.keyword }, s.keywords),
    Conditional = { link = "Statement" },
    Repeat = { link = "Statement" },
    Label = { link = "Statement" },
    Keyword = { link = "Statement" },
    Exception = { link = "Statement" },
    Operator = { fg = c.operator },

    PreProc = { fg = c.keyword },
    Include = { link = "PreProc" },
    Define = { link = "PreProc" },
    Macro = { fg = c.builtin },
    PreCondit = { link = "PreProc" },

    Type = { fg = c.type },
    StorageClass = { fg = c.keyword },
    Structure = { fg = c.type },
    Typedef = { fg = c.type },

    Special = { fg = c.special },
    SpecialChar = { fg = c.special },
    Tag = { fg = c.tag },
    Delimiter = { fg = c.punctuation },
    SpecialComment = { fg = c.fg_gutter },
    Debug = { fg = c.number },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = c.comment },
    Error = { fg = c.error },
    Todo = { fg = c.bg_dark, bg = c.warn, bold = true },

    qfLineNr = { fg = c.fg_gutter },
    qfFileName = { fg = c.func },

    htmlH1 = { fg = c.keyword, bold = true },
    htmlH2 = { fg = c.func, bold = true },
    markdownCode = { fg = c.string },
    markdownCodeBlock = { fg = c.string },
    markdownH1 = { link = "htmlH1" },
    markdownH2 = { link = "htmlH2" },
    markdownLinkText = { fg = c.func, underline = true },
  }
end

return M
