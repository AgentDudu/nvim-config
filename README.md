# nvim-config

Personal Neovim config — no distro, cherry-picked plugins, `<space>` leader, LazyVim-style keymaps.

## Requirements

- Neovim >= 0.12
- A Nerd Font (uses JetBrainsMono NFM)
- Recommended: ripgrep, fzf, git, lazygit

## Install (Windows)

```cmd
git clone https://github.com/AgentDudu/nvim-config.git %USERPROFILE%\VSC_Projects\nvim-config
mklink /J %LOCALAPPDATA%\nvim %USERPROFILE%\VSC_Projects\nvim-config
```

Then start `nvim` — lazy.nvim installs everything pinned in `lazy-lock.json` (`:Lazy restore` to force exact versions). Install LSP servers/formatters via `:MasonInstall <name>`.

## Plugins

| Plugin | Pinned commit | Purpose |
|---|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | `306a055` | plugin manager |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | `04f1788` | syntax highlighting (main branch) |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | `0dc0cfb` | file icons |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | `3aab214` | keymap hints |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | `3172f40` | auto-close brackets |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | `8b47db6` | edit quotes/brackets around text |
| [neocord](https://github.com/IogaMaster/neocord) | `4cf9999` | Discord rich presence |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | `ded1c96` | fuzzy find/grep/search |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | `d3733d9` | file browser from a buffer (`-`) |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | `5cc8d42` | file tree (`<leader>e`) |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | `016802d` | format on save + `<leader>cf` |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | `dc7698f` | git gutter signs |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | `9ffc610` | lazygit in a popup (`<leader>g`) |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | `05588aa` | LSP server configs |
| [blink.cmp](https://github.com/saghen/blink.cmp) | `78336bc` | completion (v1.x) |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | `2a6940a` | install LSP servers/tools |

Full 40-char commits live in [`lazy-lock.json`](lazy-lock.json).

## Keybinding cheatsheet

| Key | Action |
|---|---|
| `<leader>ff / fg / fb / fr / fh` | files / grep / buffers / recent / help |
| `<leader>/` | search current buffer |
| `<leader>e` · `-` | file tree · oil |
| `<leader>g` | lazygit |
| `<leader>cf` | format buffer |
| `gd` · `gD` · `K` | definition · declaration · hover docs (toggle) |
| `gra` · `grn` · `grr` | code action (refactor) · rename · references |
| `<leader>dq` | diagnostics quickfix |
| `<leader>th` | toggle inlay hints |
| `<C-h/j/k/l>` | switch windows |
