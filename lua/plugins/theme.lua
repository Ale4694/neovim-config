return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "moon", -- Puoi usare anche "storm", "moon", "day"
			transparent = true,
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
			},
			on_highlights = function(hl, c)
				-- 🎨 Commenti visibili
				hl.Comment = { fg = "#a9b1d6", italic = true }
				hl["@comment"] = { fg = "#a9b1d6", italic = true }

				-- 🔹 Altri colori utili

				hl.Function = { fg = "#7dcfff", bold = true }
				hl.Keyword = { fg = "#bb9af7", bold = true }
				hl.String = { fg = "#9ece6a", bold = true }
				hl.Number = { fg = "#ff9e64", bold = true }
				hl.Operator = { fg = "#89ddff", bold = true }

				-- 🔲 Trasparenze
				hl.Normal = { bg = "NONE" }
				hl.NormalNC = { bg = "NONE" }
				hl.SignColumn = { bg = "NONE" }
				hl.Pmenu = { bg = "NONE" }
				hl.FloatBorder = { fg = "#7aa2f7", bg = "NONE", bold = true }
				hl.Pmenu = { bg = "NONE", fg = "#c0caf5" }
				hl.NormalFloat = { bg = "NONE" }
				hl.TabLine = { bg = "NONE" }
			end,
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd("colorscheme tokyonight")
		end,
	},
}
