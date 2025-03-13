# Neovim Keymap Documentation

## Navigation & Movement

| Key | Mode | Description |
|-----|------|-------------|
| `<C-j>` | Normal | Move 10 lines down |
| `<C-k>` | Normal | Move 10 lines up |
| `$$` | Normal | Move to end of line and enter append mode |
| `$$` | Insert | Exit insert mode, move to end of line, and enter append mode |

## Window Management

### Window Creation

| Key | Mode | Description |
|-----|------|-------------|
| `ss` | Normal | Split window horizontally |
| `sv` | Normal | Split window vertically |
| `te` | Normal | Open new tab |

### Window Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `sh` | Normal | Move to left window |
| `sk` | Normal | Move to top window |
| `sj` | Normal | Move to bottom window |
| `sl` | Normal | Move to right window |
| `<tab>` | Normal | Go to next tab |
| `<s-tab>` | Normal | Go to previous tab |

### Window Resizing

| Key | Mode | Description |
|-----|------|-------------|
| `<C-w><left>` | Normal | Decrease window width |
| `<C-w><right>` | Normal | Increase window width |
| `<C-w><up>` | Normal | Increase window height |
| `<C-w><down>` | Normal | Decrease window height |
| `<A-j>` | Normal | Decrease current window height by 2 lines |
| `<A-k>` | Normal | Increase current window height by 2 lines |

## Text Manipulation

### Basic Operations

| Key | Mode | Description |
|-----|------|-------------|
| `x` | Normal | Delete character (without affecting registers) |
| `dw` | Normal | Delete word backwards |
| `<C-a>` | Normal | Select all text |
| `<A-d>` | Normal | Duplicate current line below |

### Register Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<Leader>p` | Normal | Paste from register 0 |
| `<Leader>P` | Normal | Paste before cursor from register 0 |
| `<Leader>p` | Visual | Paste from register 0 |
| `<Leader>c/C` | Normal/Visual | Change text without affecting registers |
| `<Leader>d/D` | Normal/Visual | Delete text without affecting registers |

### Numbers & Incrementing

| Key | Mode | Description |
|-----|------|-------------|
| `+` | Normal | Increment number under cursor |
| `-` | Normal | Decrement number under cursor |

### Line Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<Leader>o` | Normal | Add new line below without entering insert mode |
| `<Leader>O` | Normal | Add new line above without entering insert mode |

## File & Project Management

### File Browser

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>e` | Normal | Open Netrw file explorer |
| `<leader>wt` | Normal | Open new Windows Terminal |

### C# Development

| Command | Description |
|---------|-------------|
| `:Runcs` | Run C# project in current directory |
| `:Createcs` | Create new C# console project |
| `cw` | Snippet for `Console.WriteLine(` |

## Code Features

### LSP & Diagnostics

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>dn` | Normal | Go to next diagnostic |
| `<leader>i` | Normal | Toggle inlay hints |
| `<leader>r` | Normal | Replace hex color with HSL |
| `:ToggleAutoformat` | Command | Toggle autoformatting |

### Code Editing

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>c` | Normal | Add C# comment at start of line |
| `<C-m>` | Normal | Jump to next mark in jumplist |

## Additional Features

### Yanking (Copy) Behavior

- Text yanking operations will be briefly highlighted
- All operations preserve the state of registers unless explicitly using register commands

### File Type Specific Features

- C# files have special abbreviations and snippets
- Markdown, JSON, and JSONC files have concealing disabled by default
