-- Keymaps Nvim-Tree --
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Apri/chiudi file tree" })

-- F5 compila ed esegue file C/C++
vim.keymap.set("n", "<F5>", ":w<CR>:!clang % -o %< && ./%<<CR>")

-- Sposta il cursore dopo la parentesi chiusa
vim.keymap.set("i", "<C-l>", "<Esc>la", { desc = "Sposta fuori da parentesi" })

-- Keymaps Telescope
local builtin = require("telescope.builtin")
local map = vim.keymap.set

map("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
-- Nuova mappatura: diagnostica
map("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "Telescope: Diagnostic list" })

-- File Browser Telescope
map("n", "<leader>fe", function()
	require("telescope").extensions.file_browser.file_browser({
		path = "%:p:h",
		select_buffer = true,
	})
end, { desc = "Telescope File Browser" })

-- spazio + dd : diagnostic details
vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Mostra errore (popup)" })

-- spazio + h : documentazione funzione su cui è posizionato il cursore
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "Mostra documentazione LSP" })
