local M = {}

function M.get(c, opts)
  local s = opts.styles
  local p = c.palette

  return {
    ["@variable"] = vim.tbl_extend("force", { fg = c.fg }, s.variables),
    ["@variable.builtin"] = { fg = c.builtin },
    ["@variable.parameter"] = { fg = c.parameter },
    ["@variable.parameter.builtin"] = { fg = c.parameter, italic = true },
    ["@variable.member"] = { fg = c.property },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = c.number },
    ["@constant.macro"] = { link = "Macro" },

    ["@module"] = { fg = c.type },
    ["@module.builtin"] = { fg = c.builtin },
    ["@label"] = { fg = c.func },

    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = c.comment },
    ["@string.regexp"] = { fg = c.special },
    ["@string.escape"] = { fg = c.special },
    ["@string.special"] = { fg = c.special },
    ["@string.special.symbol"] = { fg = c.property },
    ["@string.special.url"] = { fg = c.func, underline = true },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { fg = c.special },
    ["@character.printf"] = { fg = c.special },
    ["@string.special.path"] = { fg = c.string, underline = true },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = c.type, italic = true },
    ["@type.definition"] = { link = "Type" },
    ["@type.qualifier"] = { link = "@keyword.modifier" },
    ["@attribute"] = { fg = c.special },
    ["@attribute.builtin"] = { fg = c.builtin },
    ["@property"] = { fg = c.property },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = c.func, italic = true },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },
    ["@constructor"] = { fg = c.type },
    ["@operator"] = { link = "Operator" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = { fg = c.keyword },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.export"] = { link = "Include" },
    ["@keyword.conditional.ternary"] = { link = "Operator" },
    ["@keyword.type"] = { link = "Keyword" },
    ["@keyword.modifier"] = { link = "Keyword" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.directive"] = { link = "PreProc" },

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { fg = c.punctuation },
    ["@punctuation.special"] = { fg = c.special },

    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" },
    ["@comment.error"] = { fg = c.bg_dark, bg = c.error, bold = true },
    ["@comment.warning"] = { fg = c.bg_dark, bg = c.warn, bold = true },
    ["@comment.todo"] = { link = "Todo" },
    ["@comment.note"] = { fg = c.bg_dark, bg = c.hint, bold = true },
    ["@comment.hint"] = { fg = c.bg_dark, bg = c.hint, bold = true },
    ["@comment.info"] = { fg = c.bg_dark, bg = c.info, bold = true },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = c.func, bold = true },
    ["@markup.heading.1"] = { fg = p.red[400], bold = true },
    ["@markup.heading.2"] = { fg = p.orange[400], bold = true },
    ["@markup.heading.3"] = { fg = p.yellow[400], bold = true },
    ["@markup.heading.4"] = { fg = p.green[400], bold = true },
    ["@markup.heading.5"] = { fg = p.blue[400], bold = true },
    ["@markup.heading.6"] = { fg = p.magenta[400], bold = true },
    ["@markup.quote"] = { fg = c.fg_dim, italic = true },
    ["@markup.math"] = { fg = c.special },
    ["@markup.environment"] = { fg = c.keyword },
    ["@markup.environment.name"] = { fg = c.type },
    ["@markup.link"] = { fg = c.property },
    ["@markup.link.label"] = { fg = c.func },
    ["@markup.link.url"] = { fg = c.func, underline = true },
    ["@markup.raw"] = { fg = c.string },
    ["@markup.list"] = { fg = c.keyword },
    ["@markup.list.checked"] = { fg = c.ok },
    ["@markup.list.unchecked"] = { fg = c.fg_gutter },

    ["@diff.plus"] = { link = "Added" },
    ["@diff.minus"] = { link = "Removed" },
    ["@diff.delta"] = { link = "Changed" },

    ["@tag"] = { fg = c.tag },
    ["@tag.builtin"] = { fg = c.tag },
    ["@tag.attribute"] = { fg = c.property },
    ["@tag.delimiter"] = { fg = c.fg_gutter },
  }
end

return M
