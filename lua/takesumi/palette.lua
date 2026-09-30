-- Primitive color scale, generated in OKLCH.
-- gray: near-neutral. accents: 950/900 tinted backgrounds,
-- 700 dim, 400 base, 300 bright.
return {
  gray = {
    [950] = "#0f0f11", -- statusline, tabline, separators
    [925] = "#111113", -- floats, pmenu, sidebars
    [900] = "#171719", -- editor background
    [850] = "#1f1f22", -- cursorline, folds
    [800] = "#27272c", -- raised surfaces
    [700] = "#34343a", -- selection in menus, indent guides
    [600] = "#45454b", -- visual selection, borders, invisible characters
    [500] = "#5b5b63", -- comments
    [400] = "#7f7f87", -- line numbers, indent scope
    [300] = "#a5a5ae", -- secondary text, punctuation
    [200] = "#c5c5ce", -- default text
    [100] = "#dddde4", -- emphasized text
    [50] = "#f1f1f6", -- brightest text
  },
  -- accents
  red = {
    [950] = "#341e1e", -- error virtual text, deleted lines
    [900] = "#502828", -- deleted text (inline diff)
    [700] = "#ac5859", -- error notification border
    [400] = "#f9686e", -- errors, builtin variables, macros, git delete, terminal red
    [300] = "#fe9091", -- terminal bright red
  },
  orange = {
    [950] = "#332015",
    [900] = "#4d2c16",
    [700] = "#a66031",
    [400] = "#fa8938", -- numbers, constants, current search
    [300] = "#fea872",
  },
  yellow = {
    [950] = "#2d2410", -- warning virtual text
    [900] = "#44320a", -- search matches
    [700] = "#926e10", -- warning notification border
    [400] = "#e4af2a", -- parameters, warnings, terminal yellow
    [300] = "#f0c358", -- terminal bright yellow
  },
  green = {
    [950] = "#222815", -- ok virtual text, added lines
    [900] = "#303a15", -- added text (inline diff)
    [700] = "#687f2e",
    [400] = "#a0c438", -- strings, git add, terminal green
    [300] = "#b8d862", -- terminal bright green
  },
  cyan = {
    [950] = "#0d2a2c", -- hint virtual text
    [900] = "#023e41",
    [700] = "#0a848b",
    [400] = "#16c5ce", -- types, builtins, hints, terminal cyan
    [300] = "#47d6dc", -- operators, delimiters, terminal bright cyan
  },
  blue = {
    [950] = "#162735", -- info virtual text, changed lines
    [900] = "#173852", -- changed text (inline diff)
    [700] = "#327ab0", -- info notification border
    [400] = "#45abf6", -- functions, tags, info, git change, terminal blue
    [300] = "#6cbffe", -- modules, imports, preprocessor, terminal bright blue
  },
  magenta = {
    [950] = "#2b2032",
    [900] = "#3f2c4c",
    [700] = "#8961a4", -- trace notification border
    [400] = "#c18ae7", -- escapes and specials, trace, terminal magenta
    [300] = "#d4a0f4", -- terminal bright magenta
  },
  violet = {
    [950] = "#252235",
    [900] = "#362f52",
    [700] = "#7667af",
    [400] = "#9e89ea", -- keywords
    [300] = "#b4a4f9",
  },
  teal = {
    [950] = "#112b23",
    [900] = "#073f32",
    [700] = "#0b886d",
    [400] = "#2bcfa8",
    [300] = "#65ddbb", -- fields, properties
  },
}
