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
    bg = g[900],
    bg_dark = g[950], -- statusline, sidebars
    bg_darker = g[990], -- tabline fill, separators
    bg_highlight = g[850], -- cursorline, folds
    bg_float = g[950], -- floats, pmenu: darker than bg, like sidebars
    bg_surface = g[800], -- raised surfaces: statusline sections
    bg_sel = g[700], -- pmenu selection
    bg_visual = g[600],
    border = g[600],
    separator = g[990],

    -- foregrounds
    fg = g[200],
    fg_dim = g[300],
    fg_bright = g[100],
    fg_gutter = g[400],
    comment = g[500],
    nontext = g[600],

    -- syntax
    keyword = p.magenta[400],
    func = p.blue[400],
    string = p.green[400],
    number = p.orange[400],
    constant = p.orange[400],
    type = p.yellow[400],
    operator = p.cyan[400],
    property = p.cyan[300],
    parameter = p.red[300],
    builtin = p.red[400],
    special = p.magenta[300],
    punctuation = g[300],
    tag = p.blue[400],

    -- status
    error = p.red[400],
    warn = p.yellow[400],
    info = p.blue[400],
    hint = p.cyan[400],
    ok = p.green[400],
    error_bg = p.red[950],
    warn_bg = p.yellow[950],
    info_bg = p.blue[950],
    hint_bg = p.cyan[950],
    ok_bg = p.green[950],

    -- diff / git
    diff_add = p.green[950],
    diff_delete = p.red[950],
    diff_change = p.blue[950],
    diff_text = p.blue[900],
    git_add = p.green[400],
    git_change = p.blue[400],
    git_delete = p.red[400],

    -- search
    search = p.yellow[900],
    cur_search = p.orange[400],
  }

  if opts.on_colors then
    opts.on_colors(c)
  end
  return c
end

return M
