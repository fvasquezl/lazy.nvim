# lazy.nvim — Neovim Config

Configuración personal de Neovim usando [lazy.nvim](https://github.com/folke/lazy.nvim) optimizada para desarrollo PHP/Laravel.

## Requisitos

```bash
# Compilación de parsers de treesitter
sudo pacman -S tree-sitter
paru -S tree-sitter-cli
```

## Instalación

```bash
git clone https://github.com/fvasquezl/lazy.nvim.git ~/.config/nvim
nvim
```

Al abrir Neovim, lazy.nvim instalará todos los plugins automáticamente.

## Plugins

### UI
| Plugin | Descripción |
|--------|-------------|
| [catppuccin/nvim](https://github.com/catppuccin/nvim) | Colorscheme — `flavour = auto` (mocha/latte según tema del sistema) |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline con tema catppuccin, git, diagnósticos y filetype |
| [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Tabline de buffers (oculta en el dashboard) |
| [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard con banner personalizado y colores catppuccin |

### Explorador y búsqueda
| Plugin | Descripción |
|--------|-------------|
| [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | Explorador de archivos y pickers (find, grep, buffers, etc.) |

### LSP
| Plugin | Descripción |
|--------|-------------|
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configuración de servidores LSP |
| [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim) | Instalador de servidores LSP |
| [mason-org/mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Auto-instalación de `intelephense` y `laravel_ls` |

**Servidores activos:** `intelephense` (PHP + Blade), `laravel_ls` (PHP + Blade), `tailwindcss` (HTML + Blade + PHP + JS + CSS)

### Autocompletado
| Plugin | Descripción |
|--------|-------------|
| [saghen/blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletado con fuentes LSP, path, snippets y buffer |
| [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Colección de snippets (HTML y PHP extendidos en blade) |
| [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Cierre automático de `{`, `(`, `[`, `"`, `'` |
| [mattn/emmet-vim](https://github.com/mattn/emmet-vim) | Expansión de abreviaciones HTML/CSS (`<C-e>,`) |

### Sintaxis y colores
| Plugin | Descripción |
|--------|-------------|
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Resaltado de sintaxis para PHP, Blade, HTML, CSS, JS, Lua |
| [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Guías de indentación con scope highlight (catppuccin) |
| [NvChad/nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua) | Preview de colores inline — CSS, HEX y clases Tailwind |

**Parsers instalados:** `php`, `html`, `css`, `javascript`, `lua`, `blade`

## Keybindings

### Snacks
| Tecla | Acción |
|-------|--------|
| `<leader><space>` | Buscar archivos (smart) |
| `<leader>,` | Listar buffers |
| `<leader>/` | Grep en el proyecto |
| `<leader>:` | Historial de comandos |
| `<leader>n` | Historial de notificaciones |
| `<leader>e` | Explorador de archivos |

### LSP
| Tecla | Acción |
|-------|--------|
| `gd` | Ir a definición |
| `gD` | Ir a declaración |
| `gr` | Ver referencias |
| `K` | Documentación hover |
| `<leader>rn` | Renombrar símbolo |
| `<leader>ca` | Code actions |
| `<leader>f` | Formatear archivo |
| `[d` / `]d` | Diagnóstico anterior / siguiente |

### Autocompletado
| Tecla | Acción |
|-------|--------|
| `<Tab>` | Siguiente sugerencia |
| `<S-Tab>` | Sugerencia anterior |
| `<CR>` | Aceptar sugerencia |
| `<C-Space>` | Abrir menú manualmente |
| `<C-e>` | Cerrar menú |

### Emmet
| Tecla | Acción |
|-------|--------|
| `<C-e>,` | Expandir abreviación (ej: `div.container>p`) |

### Dashboard
| Tecla | Acción |
|-------|--------|
| `e` | Nuevo archivo |
| `f` | Buscar archivo |
| `r` | Archivos recientes |
| `g` | Buscar texto |
| `c` | Abrir configuración |
| `q` | Salir |
