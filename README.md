# Neovim Keymap Documentation

## General Operations

### Movement
| Key | Description |
|-----|-------------|
| `<C-j>` | Move 10 lines down |
| `<C-k>` | Move 10 lines up |

### Register Management
| Key | Mode | Description |
|-----|------|-------------|
| `x` | Normal | Delete character without affecting registers |
| `<Leader>p` | Normal | Paste from register 0 |
| `<Leader>P` | Normal | Paste before cursor from register 0 |
| `<Leader>p` | Visual | Paste from register 0 |
| `<Leader>c/C` | Normal/Visual | Change text without affecting registers |
| `<Leader>d/D` | Normal/Visual | Delete text without affecting registers |

### Text Manipulation
| Key | Description |
|-----|-------------|
| `+` | Increment number under cursor |
| `-` | Decrement number under cursor |
| `dw` | Delete a word backwards |
| `<C-a>` | Select all text |
| `<Leader>o` | Add new line below without entering insert mode |
| `<Leader>O` | Add new line above without entering insert mode |

### Tab and Buffer Management
| Key | Description |
|-----|-------------|
| `te` | Open new tab |
| `<tab>` | Go to next tab/buffer |
| `<s-tab>` | Go to previous tab/buffer |
| `<leader>th` | Close hidden buffers |
| `<leader>tu` | Close nameless buffers |

### Window Management
| Key | Description |
|-----|-------------|
| `ss` | Split window horizontally |
| `sv` | Split window vertically |
| `sh` | Move to left window |
| `sk` | Move to top window |
| `sj` | Move to bottom window |
| `sl` | Move to right window |

### Window Resizing
| Key | Description |
|-----|-------------|
| `<C-w><left>` | Decrease window width |
| `<C-w><right>` | Increase window width |
| `<C-w><up>` | Increase window height |
| `<C-w><down>` | Decrease window height |

### Navigation and Search
| Key | Description |
|-----|-------------|
| `<C-j>` | Move 10 lines down |
| `<C-k>` | Move 10 lines up |
| `<leader>dn` | Go to next diagnostic |
| `;f` | Find files (respects .gitignore) |
| `;r` | Live grep search in current directory |
| `\\` | List open buffers |
| `;t` | Browse help tags |
| `;;` | Resume previous telescope picker |
| `;e` | List diagnostics for all buffers |
| `;s` | List Treesitter symbols |
| `sf` | Open file browser at current buffer path |
| `gd` | Go to definition |

### Git Integration
| Key | Description |
|-----|-------------|
| `<Leader>gb` | Open git blame window |
| `<Leader>go` | Open file/folder in git repository |

### UI Controls
| Key | Description |
|-----|-------------|
| `<leader>z` | Toggle Zen Mode |
| `:Noice` | Show message history |

### File Browser Keys (when active)
| Key | Mode | Description |
|-----|------|-------------|
| `N` | Normal | Create new file/directory |
| `h` | Normal | Go to parent directory |
| `/` | Normal | Start insert mode (search) |
| `<C-u>` | Normal | Move selection up 10 items |
| `<C-d>` | Normal | Move selection down 10 items |
| `<PageUp>` | Normal | Scroll preview up |
| `<PageDown>` | Normal | Scroll preview down |

### Special Functions
| Key/Command | Description |
|-------------|-------------|
| `<leader>r` | Replace hex color with HSL |
| `<leader>i` | Toggle inlay hints |
| `:ToggleAutoformat` | Toggle autoformatting |
| `<leader>fP` | Find plugin file |
| `:TSPlaygroundToggle` | Toggle Treesitter playground |
| `:Runcs` | Run C# project in current directory |
| `:Createcs` | Create new C# console project |
| `<leader>wt` | Open new Windows Terminal |
| `$$` | Move to end of line and enter insert mode |
| `<leader>c` | Add C# comment at start of line |

### Treesitter Playground Keys (when active)
| Key | Description |
|-----|-------------|
| `o`