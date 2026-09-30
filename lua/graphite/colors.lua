-- Semantic tokens. Highlight groups reference these, never the palette directly.
local M = {}

---@param opts graphite.Config
function M.get(opts)
  local p = require("graphite.palette")
  local g = p.gray

  local c = {
    none = "NONE",
    palette = p,

    -- backgrounds
    bg = g[900], -- editor (Normal)
    bg_dark = g[950], -- statusline, tabline; dark text on accent backgrounds
    bg_highlight = g[850], -- cursorline, color column, folds
    bg_float = g[925], -- floats, pmenu, sidebars: slightly below bg
    bg_surface = g[800], -- raised surfaces: statusline sections
    bg_sel = g[700], -- pmenu selection, lsp references, match paren
    bg_visual = g[600], -- visual selection
    border = g[600], -- float borders
    separator = g[950], -- window separators

    -- foregrounds
    fg = g[200], -- default text
    fg_dim = g[300], -- secondary text, sidebars
    fg_bright = g[100], -- emphasized text, current line number
    fg_gutter = g[400], -- line numbers, indent scope
    comment = g[500], -- comments
    nontext = g[600], -- whitespace, eol and other invisible characters

    -- syntax
    keyword = p.magenta[400], -- keywords, preprocessor
    func = p.blue[400], -- functions, methods, titles, directories
    string = p.green[400], -- strings, characters
    number = p.orange[400], -- numbers, booleans
    constant = p.orange[400], -- constants
    type = p.yellow[400], -- types, modules, constructors
    operator = p.cyan[400], -- operators
    property = p.cyan[300], -- fields, properties
    parameter = p.red[300], -- function parameters
    builtin = p.red[400], -- builtin variables (self, vim), macros
    special = p.magenta[300], -- escapes, regex, special characters
    punctuation = g[300], -- brackets, delimiters
    tag = p.blue[400], -- markup tags

    -- status: diagnostics and notification levels
    error = p.red[400],
    warn = p.yellow[400],
    info = p.blue[400],
    hint = p.cyan[400],
    ok = p.green[400],
    trace = p.magenta[400],
    debug = g[500],
    -- tinted backgrounds for diagnostic virtual text
    error_bg = p.red[950],
    warn_bg = p.yellow[950],
    info_bg = p.blue[950],
    hint_bg = p.cyan[950],
    ok_bg = p.green[950],

    -- diff / git
    diff_add = p.green[950], -- added line background
    diff_delete = p.red[950], -- deleted line background
    diff_change = p.blue[950], -- changed line background
    diff_text = p.blue[900], -- changed text within a changed line
    git_add = p.green[400], -- sign column, file status
    git_change = p.blue[400],
    git_delete = p.red[400],

    -- search
    search = p.yellow[900], -- search matches
    cur_search = p.orange[400], -- current match, incremental search
  }

  if opts.on_colors then
    opts.on_colors(c)
  end
  return c
end

return M
