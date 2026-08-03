# version14

A colorscheme for Neovim, ported from the [version14 Zed theme](https://github.com/version14/zed-theme). Dark, black, and light variants built around a violet accent (`#B7A2FF` dark/black, `#5F3BBB` light).

> **Note:** the violet accent is currently a **placeholder**, standing in for a retired lime-green accent while a permanent replacement is chosen. It will change again in a future release.
>
> Looking for plain Vim 8+ support instead of Neovim? Use [`version14/vim-theme`](https://github.com/version14/vim-theme) — this repo only ships a thin fallback for Neovim below 0.8, not a full standalone Vim implementation.

## Requirements

- Neovim 0.8+
- A terminal with true color support (`termguicolors`)

## Installation

### lazy.nvim

```lua
{
  "version14/nvim-theme",
  name = "version14",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme version14")
  end,
}
```

Then run `:Lazy sync` (or restart Neovim — lazy.nvim installs missing plugins automatically on startup, but running `:Lazy sync` yourself guarantees it happens immediately rather than on the next launch).

### LazyVim

Add to `~/.config/nvim/lua/plugins/colorscheme.lua`:

```lua
return {
  { "version14/nvim-theme", name = "version14" },
  { "LazyVim/LazyVim", opts = { colorscheme = "version14" } },
}
```

Then run `:Lazy sync`. **This step is required** — adding the spec alone does not download the plugin; until you sync, Neovim falls back to whatever colorscheme was previously installed.

### packer.nvim

```lua
use({ "version14/nvim-theme", as = "version14" })
```

Then run `:PackerSync`.

### Manual

Clone the repo and add it to your runtimepath:

```sh
git clone https://github.com/version14/nvim-theme ~/.config/nvim/pack/plugins/start/version14
```

Then `:colorscheme version14` (no separate install step needed — Neovim's native package loader picks up anything under `pack/*/start/` automatically).

## Verifying the install

After installing, confirm you're on the latest commit and seeing the current palette:

```sh
nvim --headless "+lua print(string.format('%06X', vim.api.nvim_get_hl(0, {name='Function'}).fg))" +qa
```

This should print `B7A2FF` (the current violet accent). If it prints `D2FF3A` (the old lime accent) instead, your plugin manager still has a stale/pinned commit — run its sync/update command again.

## Usage

```lua
-- Dark variant (default)
vim.cmd("colorscheme version14")

-- Black variant (pure black, ideal for OLED)
require("version14").setup({ style = "black" })
vim.cmd("colorscheme version14")

-- Light variant via setup (call before colorscheme)
require("version14").setup({ style = "light" })
vim.cmd("colorscheme version14")

-- Via global variable (dark / black / light)
vim.g.version14_style = "black"
vim.cmd("colorscheme version14")
```

## Plugin support

| Plugin | Notes |
|--------|-------|
| nvim-treesitter | Full |
| LSP + diagnostics | Full |
| gitsigns.nvim | Full |
| telescope.nvim | Full |
| indent-blankline.nvim | v2 and v3 |
| snacks.nvim | Dashboard, notifier, picker, indent, input |
| mini.nvim | Statusline, tabline, indentscope, icons, clue |
| which-key.nvim | Full |
| flash.nvim | Full |
| blink.cmp | Full (all kind icons) |
| noice.nvim | Full |
| trouble.nvim | Full |
| todo-comments.nvim | Full |
| neo-tree.nvim | Full |

## Structure

```
colors/
  version14.lua       Neovim 0.8+ entry point (Lua)
  version14.vim       Thin delegate for Neovim <0.8 (loads the Lua module)
lua/version14/
  init.lua            setup() / load()
  palette.lua         Color definitions for dark / black / light
  highlights.lua      Highlight group mappings
```

## Palette

| Role | Dark | Black | Light |
|------|------|-------|-------|
| Background | `#14171B` | `#000000` | `#EBEDEF` |
| Accent (placeholder) | `#B7A2FF` | `#B7A2FF` | `#5F3BBB` |
| Blue | `#78AFFF` | `#78AFFF` | `#0054CB` |
| Green | `#4BDE7F` | `#4BDE7F` | `#166534` |
| Yellow | `#FFA85E` | `#FFA85E` | `#8F4400` |
| Red | `#FF5C59` | `#FF5C59` | `#B91A25` |

## Also available for Zed, Vim, VS Code, Ghostty, Starship, gh-dash, and Atuin

- [Zed extension](https://github.com/version14/zed-theme)
- [Vim 8+ plugin](https://github.com/version14/vim-theme)
- [VS Code extension](https://github.com/version14/vscode-theme)
- [Ghostty theme](https://github.com/version14/ghostty-theme)
- [Starship palette](https://github.com/version14/starship-theme)
- [gh-dash theme](https://github.com/version14/gh-dash-theme)
- [Atuin theme](https://github.com/version14/atuin-theme)
