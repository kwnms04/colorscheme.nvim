local M = {}

---@class graphite.Styles
---@field comments? vim.api.keyset.highlight
---@field keywords? vim.api.keyset.highlight
---@field functions? vim.api.keyset.highlight
---@field variables? vim.api.keyset.highlight

---@class graphite.Config
---@field transparent? boolean leave Normal/sidebar backgrounds unset
---@field terminal_colors? boolean set vim.g.terminal_color_*
---@field styles? graphite.Styles
---@field on_colors? fun(colors: table) tweak semantic tokens before use
---@field on_highlights? fun(hl: table, colors: table) tweak highlight groups before they are applied
M.defaults = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
  on_colors = nil,
  on_highlights = nil,
}

---@type graphite.Config
M.config = vim.deepcopy(M.defaults)

---@param opts? graphite.Config
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
end

local modules = { "editor", "syntax", "treesitter", "lsp", "plugins" }

local function set_terminal_colors(c)
  local p = c.palette
  -- stylua: ignore
  local colors = {
    p.gray[800], p.red[400], p.green[400], p.yellow[400],
    p.blue[400], p.magenta[400], p.cyan[400], p.gray[300],
    p.gray[500], p.red[300], p.green[300], p.yellow[300],
    p.blue[300], p.magenta[300], p.cyan[300], p.gray[200],
  }
  for i, color in ipairs(colors) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

function M.load()
  local opts = M.config
  local c = require("graphite.colors").get(opts)

  local hl = {}
  for _, name in ipairs(modules) do
    for group, spec in pairs(require("graphite.groups." .. name).get(c, opts)) do
      hl[group] = spec
    end
  end
  if opts.on_highlights then
    opts.on_highlights(hl, c)
  end

  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "graphite"

  for group, spec in pairs(hl) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  if opts.terminal_colors then
    set_terminal_colors(c)
  end
end

return M
