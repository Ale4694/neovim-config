return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("cyberdream").setup({
			transparent = false,
			italic_comments = true,
			hide_fillchars = false,
			terminal_colors = true,
			cache = false,
			extensions = {
				telescope = true,
				notify = true,
				mini = true,
			},
		})
		-- carica subito il tema
		vim.cmd("colorscheme cyberdream")
	end,
}
