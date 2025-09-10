Neovim Configurazione Modulare – by Alessandro

Questa configurazione è strutturata per mantenere ordine, chiarezza e scalabilità nel tempo.
Utilizza lazy.nvim come gestore di plugin e separa le funzionalità in moduli per una gestione semplificata.
Struttura dei file

La configurazione è suddivisa in modo logico per separare le impostazioni di base, le mappature dei tasti, la configurazione LSP e i singoli plugin.
code Code
IGNORE_WHEN_COPYING_START
IGNORE_WHEN_COPYING_END

    
.config/nvim/
├── init.lua                   <-- File principale (entry point)
├── theme_2                      <-- (Nuovo file tema)
└── lua/
    ├── core/
    │   ├── options.lua        <-- Impostazioni di base di Neovim
    │   ├── keymaps.lua        <-- Mappature globali dei tasti
    │
    ├── lsp/
    │   └── init.lua           <-- Configurazione LSP (tsserver, pyright, clangd, ecc.)
    │
    └── plugins/
        ├── theme.lua          <-- Tema di default (es. Tokyonight)
        ├── theme_3.lua        <-- (Nuovo tema)
        ├── autopairs.lua      <-- Parentesi automatiche
        ├── cmp.lua            <-- Completamento intelligente
        ├── gitsigns.lua       <-- Integrazione con Git
        ├── lspconfig.lua      <-- Setup dei client LSP
        ├── lualine.lua        <-- Barra di stato personalizzata
        ├── markdown-preview.lua<-- Anteprima per file Markdown
        ├── mason.lua          <-- Gestione installazione LSP/linter/formatter
        ├── noice.lua          <-- UI avanzata per messaggi e comandi
        ├── notify.lua         <-- Notifiche popup
        ├── nvim-tree.lua      <-- File explorer
        ├── telescope.lua      <-- Ricerca fuzzy (file, testo, etc.)
        ├── treesitter.lua     <-- Highlighting sintattico avanzato
        └── trouble.lua        <-- UI per la diagnostica (errori e warning)

  

Plugin gestiti con lazy.nvim
Temi e UI

    folke/tokyonight.nvim: Tema di default, caricato all'avvio per evitare sfarfallii.

    nvim-lualine/lualine.nvim: Una barra di stato potente e minimale.

    nvim-tree/nvim-tree.lua: Un file explorer moderno.

    rcarriga/nvim-notify: Un sistema di notifiche più pulito.

    folke/noice.nvim: Ridisegna l'interfaccia di messaggi, comandi e ricerca di Neovim.

    folke/trouble.nvim: Un pannello dedicato per visualizzare errori, warning e altri elementi di diagnostica in modo ordinato.

LSP & Completamento

    neovim/nvim-lspconfig: Configurazione base per i server di linguaggio.

    williamboman/mason.nvim: Per installare e gestire facilmente LSP, linter e formatter.

    williamboman/mason-lspconfig.nvim: Ponte tra Mason e nvim-lspconfig.

    hrsh7th/nvim-cmp: Motore di completamento di nuova generazione.

    L3MON4D3/LuaSnip: Gestore di snippet.

    ray-x/lsp_signature.nvim: Mostra la firma delle funzioni mentre si scrive.

Sviluppo e Utility

    nvim-telescope/telescope.nvim: Strumento indispensabile per la ricerca fuzzy.

    nvim-treesitter/nvim-treesitter: Per un highlighting del codice più preciso e contestuale.

    windwp/nvim-autopairs: Inserimento automatico di parentesi e virgolette.

    lewis6991/gitsigns.nvim: Aggiunge indicatori relativi a Git nella gutter (la colonna a sinistra).

    iamcco/markdown-preview.nvim: Abilita un'anteprima live nel browser per i file Markdown.

LSP supportati (preconfigurati)

Configurati in lua/lsp/init.lua e gestiti tramite Mason:

    pyright → Python

    clangd → C/C++

    tsserver → JavaScript / TypeScript / React

    emmet_ls → Emmet per HTML/CSS

    eslint → Linting per JavaScript/React

Mapping principali
Comando	Descrizione
<leader>ff	Ricerca file nel progetto con Telescope.
<leader>fg	Ricerca testo live nel progetto con Telescope.
<leader>fb	Visualizza e cerca tra i buffer aperti con Telescope.
<leader>fe	Apri un file browser all'interno di Telescope.
<leader>fd	Mostra la diagnostica del progetto con Telescope.
<leader>e	Apri/chiudi il file explorer (nvim-tree).
<leader>xx	Apri/chiudi il pannello della diagnostica (Trouble).
K	Mostra documentazione LSP al passaggio del mouse (hover).
gd	Vai alla definizione della funzione/variabile.
gr	Trova i riferimenti (utilizzi) della funzione/variabile.
<leader>dd	Mostra l'errore/warning della riga corrente in un popup.
<F5>	Compila ed esegui il file C/C++ corrente.
<C-l> (insert)	Sposta il cursore fuori da parentesi/virgolette.
Comandi utili

    :Lazy: Apre l'interfaccia di lazy.nvim per gestire i plugin.

    :Mason: Apre l'interfaccia di mason.nvim per installare/rimuovere LSP, linter, ecc.

    :TroubleToggle: Apre o chiude la finestra di diagnostica di Trouble.

    :MarkdownPreview: Avvia l'anteprima live del file Markdown corrente nel browser.

    :Noice history: Mostra la cronologia dei messaggi e dei comandi.

    :checkhealth: Esegue una diagnostica generale di Neovim e dei plugin.
