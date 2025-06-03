return {
	{
		"tadmccorkle/markdown.nvim",
		ft = "markdown",
		opts = {
			mappings = {
				toggle_checkbox = "gL",
			},
		},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = "markdown",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {
			render = {
				emoji = true,
				latex = true, -- rende i blocchi `$$...$$` visivamente belli
			},
		},
	},
}
