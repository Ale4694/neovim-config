-- ~/.config/nvim/lua/plugins/noice.lua
-- Gestione elegante di messaggi, hover e firma LSP

return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			lsp = {
				progress = { enabled = true },
				signature = { enabled = false },
				hover = { enabled = true },
			},
			messages = {
				enabled = true,
				view = "notify",
				view_error = "popup",
				view_warn = "notify",
				view_history = "notify",
				view_search = "virtualtext",
			},
			views = {
				popup = {
					border = {
						style = "rounded",
					},
					position = {
						row = "50%",
						col = "50%",
					},
					size = {
						width = 60,
						height = 10,
					},
					win_options = {
						winhighlight = {
							Normal = "Normal",
							FloatBorder = "DiagnosticInfo",
						},
					},
				},
			},
			presets = {
				bottom_search = false,
				command_palette = true,
				long_message_to_split = true,
			},
		})
	end,
}
