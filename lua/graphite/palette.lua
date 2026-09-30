-- Primitive color scale, generated in OKLCH.
-- gray: hue 286, near-neutral. accents: 950/900 tinted backgrounds,
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
  -- accents, OKLCH hue at the end of each line
  red = { [950] = "#341e1e", [900] = "#502828", [700] = "#ac5859", [400] = "#f9686e", [300] = "#fe9091" }, -- 20
  orange = { [950] = "#332015", [900] = "#4d2c16", [700] = "#a66031", [400] = "#fa8938", [300] = "#fea872" }, -- 52
  yellow = { [950] = "#2d2410", [900] = "#44320a", [700] = "#926e10", [400] = "#e4af2a", [300] = "#f0c358" }, -- 85
  green = { [950] = "#222815", [900] = "#303a15", [700] = "#687f2e", [400] = "#a0c438", [300] = "#b8d862" }, -- 123
  cyan = { [950] = "#0d2a2c", [900] = "#023e41", [700] = "#0a848b", [400] = "#16c5ce", [300] = "#47d6dc" }, -- 201
  blue = { [950] = "#162735", [900] = "#173852", [700] = "#327ab0", [400] = "#45abf6", [300] = "#6cbffe" }, -- 244
  magenta = { [950] = "#2b2032", [900] = "#3f2c4c", [700] = "#8961a4", [400] = "#c18ae7", [300] = "#d4a0f4" }, -- 310
}
