-- ~/.config/nvim/lua/core/diagnostic.lua

-- Configura i popup degli errori con stile coerente al sistema di notifiche

vim.diagnostic.config({
	float = {
		border = "rounded", -- Bordi morbidi
		source = "always", -- Mostra da quale server arriva l’errore
		header = "", -- Nessun titolo sopra il popup
		prefix = "● ", -- Simbolo decorativo
	},
	virtual_text = false, -- Nessun messaggio inline nel testo
	signs = true, -- Mantiene i simboli nel margine
	underline = true, -- Sottolinea le righe
	update_in_insert = false, -- Mostra errori solo fuori da insert mode
})

-- Colori coerenti con il tema (puoi adattare al tuo schema)
vim.cmd([[
  highlight! DiagnosticFloatingError guibg=#1e1e2e guifg=#f38ba8
  highlight! DiagnosticFloatingWarn  guibg=#1e1e2e guifg=#f9e2af
  highlight! DiagnosticFloatingInfo  guibg=#1e1e2e guifg=#89dceb
  highlight! DiagnosticFloatingHint  guibg=#1e1e2e guifg=#a6e3a1
]])

-- Mappatura per mostrare rapidamente il popup dell'errore corrente
vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, {
	desc = "Mostra errore (popup elegante)",
	noremap = true,
	silent = true,
})
