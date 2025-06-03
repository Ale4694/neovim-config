# Neovim Configurazione Modulare – by Alessandro

Questa configurazione è strutturata per mantenere ordine, chiarezza e scalabilità nel tempo.  
Utilizza **lazy.nvim** come gestore di plugin e separa le funzionalità in moduli.

---

## Struttura dei file

```
.config/nvim/
├── init.lua                   <-- File principale
└── lua/
    ├── core/
    │   ├── options.lua        <-- Impostazioni di base
    │   ├── keymaps.lua        <-- Mappature di tasti
    ├── lsp/
    │   └── init.lua           <-- Configurazione LSP (tsserver, pyright, clangd, ecc.)
    └── plugins/
        ├── theme.lua          <-- Tema Tokyonight (caricamento immediato)
        ├── autopairs.lua      <-- Parentesi automatiche
        ├── cmp.lua            <-- Completamento intelligente
        ├── gitsigns.lua       <-- Git integration
        ├── lspconfig.lua      <-- Setup LSP client
        ├── mason.lua          <-- Installazione LSP/linter/formatter
        ├── lualine.lua        <-- Barra di stato
        ├── notify.lua         <-- Notifiche popup
        ├── noice.lua          <-- UI avanzata per LSP, messaggi e comandi
        ├── lsp_signature.lua  <-- Firma funzioni in finestra fluttuante
        ├── nvim-tree.lua      <-- File explorer
        ├── telescope.lua      <-- Ricerca file/testo/diagnostica
        └── treesitter.lua     <-- Highlighting sintattico avanzato
```

---

## Plugin gestiti con `lazy.nvim`

### Tema
- `folke/tokyonight.nvim`  
  - Lazy disattivato per caricarlo subito all'avvio  
  - Colore dei commenti personalizzato con `#a9b1d6`  
  - Configurazione salvata in `plugins/theme.lua`:

```lua
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyonight")
    vim.cmd("highlight Comment guifg=#a9b1d6")
  end,
}
```

---

### UI
- `nvim-lualine/lualine.nvim`
- `nvim-tree/nvim-tree.lua`
- `rcarriga/nvim-notify`
- `folke/noice.nvim`
- `ray-x/lsp_signature.nvim`

---

### LSP & Completamento
- `neovim/nvim-lspconfig`
- `williamboman/mason.nvim`
- `williamboman/mason-lspconfig.nvim`
- `hrsh7th/nvim-cmp`
- `hrsh7th/cmp-nvim-lsp`
- `L3MON4D3/LuaSnip`
- `rafamadriz/friendly-snippets`

---

### Ricerca
- `nvim-telescope/telescope.nvim`
- `nvim-telescope/telescope-file-browser.nvim`

---

### Sintassi
- `nvim-treesitter/nvim-treesitter`

---

### Utility
- `windwp/nvim-autopairs`
- `lewis6991/gitsigns.nvim`

---

## LSP supportati (preconfigurati)

Configurati in `lua/lsp/init.lua`:

- `pyright` → Python
- `clangd` → C/C++
- `tsserver` → JavaScript / TypeScript / React
- `emmet_ls` → Emmet HTML/CSS
- `eslint` → Linting JavaScript/React

---

## Mapping principali

| Comando         | Descrizione                                     |
|------------------|-------------------------------------------------|
| `<leader>ff`     | Ricerca file con Telescope                      |
| `<leader>fg`     | Ricerca testo live con Telescope                |
| `<leader>fb`     | Lista buffer con Telescope                      |
| `<leader>fe`     | File browser con Telescope                      |
| `<leader>fd`     | Diagnostica completa con Telescope              |
| `<leader>e`      | Toggle file explorer (nvim-tree)               |
| `<leader>h`      | Hover LSP (documentazione sotto cursore)       |
| `<leader>dd`     | Mostra warning/error in popup fluttuante        |
| `<F5>`           | Compila ed esegui file C/C++                   |
| `<C-l>` (insert) | Sposta cursore fuori da parentesi               |

---

## Comandi utili

- `:Lazy` → Interfaccia plugin manager
- `:Mason` → Gestione LSP/linter/formatter
- `:Noice history` → Cronologia messaggi
- `:Noice dismiss` → Chiude popup attivi
- `:checkhealth` → Diagnostica Neovim
- `:Telescope diagnostics` → Elenco warning/error

---
