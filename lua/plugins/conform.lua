-- ~/.config/nvim/lua/plugins/conform.lua

-- Formattazione automatica con Prettier e Stylua

return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, -- Esegue il format prima di salvare
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "eslint_d" }, -- Formatter per JavaScript
				typescript = { "eslint_d" }, -- Formatter per TypeScript
				lua = { "stylua" }, -- Formatter per Lua
			},
			format_on_save = {
				lsp_fallback = true, -- Usa LSP se formatter non disponibile
			},
		})
	end,
}
