# graphite

A dark Neovim colorscheme with a near-neutral gray background and vivid accents.
Colors are generated in OKLCH.

> `graphite` is a working name. See [Renaming](#renaming).

## Install

lazy.nvim:

```lua
{
  "kwnms04/colorscheme.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("graphite").setup({})
    vim.cmd.colorscheme("graphite")
  end,
}
```

## Options

```lua
require("graphite").setup({
  transparent = false, -- leave Normal/sidebar backgrounds unset
  terminal_colors = true, -- set vim.g.terminal_color_0..15
  styles = { -- any nvim_set_hl() attributes
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
  on_colors = function(colors) end, -- tweak semantic tokens
  on_highlights = function(hl, colors) end, -- tweak highlight groups
})
```

lualine: `require("lualine").setup({ options = { theme = "graphite" } })`

## Extras

- Ghostty: copy `extras/ghostty/graphite` to `~/.config/ghostty/themes/graphite`,
  then set `theme = graphite` in your Ghostty config.

## Structure

Colors go through three layers, so a change is made in one place:

| Layer | File | Example |
|---|---|---|
| Palette (primitives) | `lua/graphite/palette.lua` | `gray[800]`, `red[400]` |
| Semantic tokens | `lua/graphite/colors.lua` | `bg_float`, `error`, `diff_add` |
| Highlight groups | `lua/graphite/groups/*.lua` | `NormalFloat`, `DiagnosticError` |

Highlight groups only reference semantic tokens.

### Palette

Gray (hue 286):

| 950 | 900 | 850 | 800 | 700 | 600 | 500 | 400 | 300 | 200 | 100 | 50 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `#0f0f11` | `#171719` | `#1f1f22` | `#27272c` | `#34343a` | `#45454b` | `#5b5b63` | `#7f7f87` | `#a5a5ae` | `#c5c5ce` | `#dddde4` | `#f1f1f6` |

Accents (950/900 tinted background, 700 dim, 400 base, 300 bright):

| | 950 | 900 | 700 | 400 | 300 |
|---|---|---|---|---|---|
| red | `#341e1e` | `#502828` | `#ac5859` | `#f9686e` | `#fe9091` |
| orange | `#332015` | `#4d2c16` | `#a66031` | `#fa8938` | `#fea872` |
| yellow | `#2d2410` | `#44320a` | `#926e10` | `#e4af2a` | `#f0c358` |
| green | `#222815` | `#303a15` | `#687f2e` | `#a0c438` | `#b8d862` |
| cyan | `#0d2a2c` | `#023e41` | `#0a848b` | `#16c5ce` | `#47d6dc` |
| blue | `#162735` | `#173852` | `#327ab0` | `#45abf6` | `#6cbffe` |
| magenta | `#2b2032` | `#3f2c4c` | `#8961a4` | `#c18ae7` | `#d4a0f4` |

## Supported plugins

Treesitter, LSP semantic tokens and diagnostics are built in. Plugins:
gitsigns, telescope, nvim-cmp, blink.cmp, which-key, indent-blankline,
nvim-tree, neo-tree, lazy.nvim, mini.icons, lualine.

## Renaming

The name appears in these places:

- `colors/graphite.lua` (file name)
- `lua/graphite/` (directory name, and `require("graphite...")` calls)
- `lua/lualine/themes/graphite.lua` (file name)
- `extras/ghostty/graphite` (file name)
- `vim.g.colors_name = "graphite"` in `lua/graphite/init.lua`
