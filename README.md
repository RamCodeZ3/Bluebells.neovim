# bluebells.nvim

A Neovim colorscheme built on the Bluebells palette (dark, blue/violet/moss
accents on a near-black background).

Bluebells starts Treesitter highlighting automatically for Bash, CSS, GraphQL,
HTML, JavaScript, JSON, Lua, Markdown, Python, Regex, Rust, SQL, TypeScript and
TSX when their parsers are installed. Set `treesitter = false` in
`require("bluebells").setup()` if highlighting is managed elsewhere in your
configuration.

## Try it locally (lazy.nvim)

```lua
{
  dir = "~/path/to/bluebells.nvim",
  name = "bluebells",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("bluebells")
  end,
}
```

Options can be set before loading the colorscheme:

```lua
require("bluebells").setup({
  theme = "default",
  transparent = false,
  dimInactive = false,
  undercurl = true,
  terminalColors = true,
  treesitter = true,
})
vim.cmd.colorscheme("bluebells")
```

## Plugin support

Bluebells includes native colors for:

- lazy.nvim and Mason
- lualine.nvim (`theme = "auto"` or `theme = "bluebells"`)
- dashboard-nvim (Doom and Hyper themes)
- milli.nvim, including dynamic splash colors and its screensaver background
- Neo-tree and Telescope
- nvim-cmp and active LuaSnip nodes
- Trouble and LazyGit

nvim-web-devicons and colorviewer.nvim intentionally keep the colors they are
displaying. Plenary, nvim-lspconfig, mason-lspconfig, Autopairs, Autotag and
Surround do not require theme-specific groups. Milli's generated RGB groups
are preserved when Bluebells is reloaded, so each animation keeps its original
colors instead of being flattened to the theme palette.

## Structure

```
bluebells.nvim/
├── colors/
│   └── bluebells.vim          -- entry point, detected by :colorscheme bluebells
└── lua/
    └── bluebells/
        ├── init.lua           -- user config + setup()/load()
        ├── colors.lua         -- the single source of truth for every hex value
        └── highlights/
            ├── init.lua       -- applies every highlight module
            ├── editor.lua     -- core UI groups (Normal, StatusLine, Pmenu, ...)
            ├── syntax.lua     -- classic Vim syntax groups (Comment, String, ...)
            ├── lsp.lua        -- diagnostic groups
            ├── treesitter.lua -- @capture groups
            └── plugins/       -- plugin-specific highlight groups
    └── lualine/
        └── themes/
            └── bluebells.lua  -- native lualine theme
```

## Palette (`lua/bluebells/colors.lua`)

Every value comes straight from the Bluebells design tokens:

| token         | hex       | used for                         |
|---------------|-----------|-----------------------------------|
| `bg`          | `#100F0F` | editor background                 |
| `panel`       | `#181818` | floats, popups                    |
| `panel2`      | `#202020` | statusline, tabline                |
| `border`      | `#2a2a2a` | window separators, float borders   |
| `fg`          | `#ccd4dd` | default text                       |
| `muted`       | `#4f5563` | comments, punctuation, line numbers|
| `parameter`   | `#ccd4dd` | function parameters                |
| `property`    | `#52b788` | object properties, attributes      |
| `function`    | `#5c7ccf` | function names                     |
| `type`        | `#5c7ccf` | types                               |
| `constructor` | `#5c7ccf` | constructors                        |
| `string`      | `#8cb416` | strings                            |
| `number`      | `#e09f3e` | numbers                            |
| `error`       | `#c94c4c` | error diagnostics                  |
| `warning`     | `#e09f3e` | warning diagnostics                 |
| `info`        | `#b0c4de` | info diagnostics                    |
| `hint`        | `#52b788` | hint diagnostics                    |
| `selection`   | `#3a3a3a` | visual selection                    |

Nothing outside `colors.lua` should ever hardcode a hex value — every
highlight file references `p.<token>` instead.

## Adding plugin support

Create `lua/bluebells/highlights/plugins/<name>.lua` following the same shape:

```lua
local M = {}

function M.setup(config)
  local p = require("bluebells.colors")
  return {
    -- HighlightGroupName = { fg = p.something, bg = p.panel },
  }
end

return M
```

Then add its path to the `hl_files` list in
`lua/bluebells/highlights/init.lua`.
