return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("solarized-osaka").setup({
				transparent = true,
				terminal_colors = true,
				styles = {
					floats = "transparent",
				},
			})

			vim.cmd("colorscheme solarized-osaka")

			-- 🎯 Forza trasparenza su tutto
			local set = vim.api.nvim_set_hl
			set(0, "Normal", { bg = "none" })
			set(0, "NormalNC", { bg = "none" })
			set(0, "NormalFloat", { bg = "none" })
			set(0, "FloatBorder", { bg = "none" })
			set(0, "FloatTitle", { bg = "none" })
			set(0, "WinSeparator", { bg = "none" })
			set(0, "StatusLine", { bg = "none" })
			set(0, "SignColumn", { bg = "none" })
			set(0, "VertSplit", { bg = "none" })
			set(0, "EndOfBuffer", { bg = "none" })
		end,
	},
}
