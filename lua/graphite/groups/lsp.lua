-- Diagnostics, LSP UI and semantic tokens.
local M = {}

function M.get(c)
  local hl = {
    LspReferenceText = { bg = c.bg_sel },
    LspReferenceRead = { bg = c.bg_sel },
    LspReferenceWrite = { bg = c.bg_sel, underline = true },
    LspSignatureActiveParameter = { bg = c.bg_sel, bold = true },
    LspCodeLens = { fg = c.comment },
    LspCodeLensSeparator = { fg = c.nontext },
    LspInlayHint = { fg = c.fg_gutter, bg = c.bg_highlight },
    LspInfoBorder = { link = "FloatBorder" },

    -- semantic tokens: most fall back to treesitter groups by default
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.lifetime"] = { link = "@keyword.modifier" },
    ["@lsp.type.modifier"] = { link = "@keyword.modifier" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.generic"] = { link = "@variable" },
    ["@lsp.type.deriveHelper"] = { link = "@attribute" },
    ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.variable.static"] = { link = "@constant" },
    ["@lsp.typemod.variable.callable"] = { link = "@function" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.unresolvedReference"] = { sp = c.error, undercurl = true },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.readonly"] = { link = "@constant" },
  }

  for _, kind in ipairs({ "Error", "Warn", "Info", "Hint", "Ok" }) do
    local key = kind:lower()
    local fg, bg = c[key], c[key .. "_bg"]
    hl["Diagnostic" .. kind] = { fg = fg }
    hl["DiagnosticVirtualText" .. kind] = { fg = fg, bg = bg }
    hl["DiagnosticVirtualLines" .. kind] = { fg = fg }
    hl["DiagnosticUnderline" .. kind] = { sp = fg, undercurl = true }
    hl["DiagnosticFloating" .. kind] = { fg = fg }
    hl["DiagnosticSign" .. kind] = { fg = fg }
  end
  hl.DiagnosticUnnecessary = { fg = c.comment }
  hl.DiagnosticDeprecated = { strikethrough = true }

  return hl
end

return M
