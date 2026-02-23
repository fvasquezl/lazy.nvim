# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration using **lazy.nvim** as the plugin manager. Plugins are defined as individual spec files under `lua/plugins/`, which lazy.nvim auto-imports.

## Structure

- `init.lua` — Entry point; bootstraps lazy.nvim and loads `config.lazy` and `config.options`
- `lua/config/lazy.lua` — lazy.nvim bootstrap and plugin import (`{ import = "plugins" }`)
- `lua/config/options.lua` — Global vim options
- `lua/plugins/*.lua` — One file per plugin (or plugin group); each returns a lazy.nvim plugin spec

## Adding Plugins

Create a new file under `lua/plugins/` that returns a lazy.nvim spec table. It will be auto-imported on next Neovim startup.

## Key Settings

- `mapleader = " "` (Space), `maplocalleader = "\\"` (backslash)
- Tabs (not spaces), `tabstop = 4`, `shiftwidth = 4`
- `clipboard = "unnamedplus"` (system clipboard)
- Absolute line numbers, cursor line, no line wrap, no swapfile

## Current Plugins

- **catppuccin/nvim** — Colorscheme; `flavour = "auto"` (mocha dark / latte light)
- **folke/snacks.nvim** — File explorer + pickers

### Snacks keybindings
| Key | Action |
|-----|--------|
| `<leader><space>` | Smart find files |
| `<leader>,` | Buffers |
| `<leader>/` | Grep |
| `<leader>:` | Command history |
| `<leader>n` | Notification history |
| `<leader>e` | File explorer |

## Plugin Management (in Neovim)

- `:Lazy` — Open lazy.nvim UI
- `:Lazy sync` — Update all plugins
- `:Lazy clean` — Remove unused plugins
- `lazy-lock.json` tracks pinned plugin versions
