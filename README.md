# 🚀 nvchad-config

My personal [NvChad](https://github.com/NvChad/NvChad) configuration for Neovim — built for a fast, minimal, and productive development environment across multiple languages.

## 📋 Requirements

- [Neovim](https://neovim.io/) >= 0.11
- [NvChad](https://nvchad.com/) >= 2.5
- [Node.js](https://nodejs.org/) (for LSP servers)
- [Git](https://git-scm.com/)
- A [Nerd Font](https://www.nerdfonts.com/) (recommended: JetBrainsMono Nerd Font)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live grep)
- [make](https://www.gnu.org/software/make/) (for telescope-fzf-native)

## ⚡ Installation

```bash
# backup existing config if you have one
mv ~/.config/nvim ~/.config/nvim.bak

# clone the repo
git clone https://github.com/adit-prawira/nvchad-config ~/.config/nvim

# launch nvim — plugins will auto install
nvim
```

## 🔌 Plugins

| Plugin | Purpose |
|---|---|
| `neovim/nvim-lspconfig` | LSP configuration |
| `stevearc/conform.nvim` | Code formatting |
| `nvim-telescope/telescope.nvim` | Fuzzy finder |
| `nvim-telescope/telescope-fzf-native.nvim` | Faster telescope sorting |
| `mg979/vim-visual-multi` | Multiple cursors (VSCode Cmd+D style) |

## 🌐 Language Support

LSP, formatting, and syntax highlighting configured for:

- **Go** — `gopls`
- **Rust** — `rust-analyzer` with Clippy on save
- **TypeScript / JavaScript** — `vtsls`
- **Python** — `pyright`
- **HTML / CSS** — `html`, `cssls`
- **C / C++** — `clangd`
- **Java** — `jdtls`
- **C#** — `omnisharp`
- **YAML** — `yamlls` with GitHub Actions, Docker Compose, Kustomize schemas
- **Nginx** — `nginx-language-server`
- **Lua** — `lua_ls` (built into NvChad)

## ⌨️ Key Mappings

### General
| Keymap | Action |
|---|---|
| `;` | Enter command mode |
| `jk` | Escape (insert mode) |
| `Ctrl+s` | Save file |
| `Space+a` | Select all |

### File Search (Telescope)
| Keymap | Action |
|---|---|
| `Space+ff` | Find files (no preview) |
| `Space+fr` | Find files (with preview) |
| `Space+fg` | Live grep (global search) |
| `Space+fi` | Search in current buffer |
| `Space+ft` | Select theme |
| `Space+ef` | Find Neovim config files |

### Code Editing
| Keymap | Action |
|---|---|
| `Tab` (visual) | Indent in |
| `Shift+Tab` (visual) | Indent out |
| `Ctrl+d` | Multi cursor — select word (like VSCode Cmd+D) |
| `Ctrl+d` (repeat) | Add next occurrence to selection |

### Folding
| Keymap | Action |
|---|---|
| `Space+zz` | Toggle fold |
| `Space+zm` | Fold all |
| `Space+zr` | Unfold all |
| `Space+zf` (visual) | Fold selection |
| `Space+zo` (visual) | Unfold selection |
| `Space+zl` | Set fold level |

### Terminal
| Keymap | Action |
|---|---|
| `Space+trf` | Toggle floating terminal |
| `Space+trh` | Toggle horizontal terminal |
| `Space+trv` | Toggle vertical terminal |

### LSP
| Keymap | Action |
|---|---|
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `Leader+D` | Go to type definition |
| `Leader+ra` | Rename symbol |
| `Leader+wa` | Add workspace folder |
| `Leader+wr` | Remove workspace folder |
| `Leader+wl` | List workspace folders |

### Word Navigation
| Keymap | Action |
|---|---|
| `Alt+Left` | Jump word left |
| `Alt+Right` | Jump word right |

## 📁 Structure

```
~/.config/nvim/
├── init.lua                  # entry point
├── lazy-lock.json            # locked plugin versions
├── .stylua.toml              # lua formatter config
└── lua/
    ├── configs/
    │   ├── lspconfig.lua     # LSP server configurations
    │   └── conform.lua       # formatter configurations
    ├── plugins/
    │   └── init.lua          # plugin declarations
    ├── mappings.lua          # all keymaps
    └── options.lua           # neovim options
```

## 📝 Notes

- This config uses NvChad as a plugin — see [NvChad docs](https://nvchad.com/docs/quickstart/install) for more info
- LSP servers are managed via [Mason](https://github.com/williamboman/mason.nvim) — run `:Mason` to install/manage servers
- Formatters are managed via `conform.nvim` — run `:ConformInfo` to check formatter status
