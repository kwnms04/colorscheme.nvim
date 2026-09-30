local c = require("graphite.colors").get(require("graphite").config)

local function mode(color)
  return {
    a = { fg = c.bg_darker, bg = color, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_float },
    c = { fg = c.fg_dim, bg = c.bg_dark },
  }
end

return {
  normal = mode(c.func),
  insert = mode(c.string),
  visual = mode(c.keyword),
  replace = mode(c.error),
  command = mode(c.type),
  terminal = mode(c.hint),
  inactive = {
    a = { fg = c.comment, bg = c.bg_dark },
    b = { fg = c.comment, bg = c.bg_dark },
    c = { fg = c.comment, bg = c.bg_dark },
  },
}
