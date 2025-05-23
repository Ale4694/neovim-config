-- ~/.config/nvim/lua/plugins/trouble.lua

return {
	"folke/trouble.nvim",
	cmd = "TroubleToggle",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Diagnostica: workspace" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Diagnostica: buffer attuale" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix list" },
		{ "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Loclist" },
	},
	opts = {
		use_diagnostic_signs = true, -- Usa gli stessi simboli di LSP
		auto_open = false,
		auto_close = false,
		auto_preview = true,
		signs = {
			error = "",
			warning = "",
			hint = "",
			information = "",
			other = "",
		},
	},
}
