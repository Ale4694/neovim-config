---@type LazyPluginSpec
return {
	"iamcco/markdown-preview.nvim",
	ft = "markdown",
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	config = function()
		vim.g.mkdp_browser = "brave-browser" -- o "firefox", "chromium", ecc.
	end,
}
