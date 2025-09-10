return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- [[ Definizione del Tema Cyberdream ]]
		-- Creiamo il nostro tema personalizzato come una tabella Lua.
		local cyberdream_theme = {
			normal = {
				a = { fg = "#0d0221", bg = "#00ffff", gui = "bold" }, -- Ciano per la modalità NORMALE
				b = { fg = "#ffffff", bg = "#4d4d4d" },
				c = { fg = "#f8f8f2", bg = "none" },
			},
			insert = {
				a = { fg = "#0d0221", bg = "#39ff14", gui = "bold" }, -- Verde Neon per la modalità INSERIMENTO
			},
			visual = {
				a = { fg = "#0d0221", bg = "#a855f7", gui = "bold" }, -- Viola per la modalità VISUALE
			},
			command = {
				a = { fg = "#0d0221", bg = "#ff8c00", gui = "bold" }, -- Arancione per la modalità COMANDO
			},
			replace = {
				a = { fg = "#0d0221", bg = "#ff3131", gui = "bold" }, -- Rosso Neon per la modalità SOSTITUZIONE
			},
			inactive = { -- Colori per le finestre non attive (più spenti)
				a = { fg = "#ffffff", bg = "#3a3a3a", gui = "bold" },
				b = { fg = "#ffffff", bg = "#2c2c2c" },
				c = { fg = "#a0a0a0", bg = "none" },
			},
		}

		-- [[ Setup di Lualine ]]
		require("lualine").setup({
			options = {
				-- Qui applichiamo il nostro tema personalizzato!
				theme = cyberdream_theme,

				icons_enabled = true,

				-- I separatori tondeggianti che volevi
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },

				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				always_divide_middle = true,
			},

			-- Struttura della status bar
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = { { "filename", path = 1 } }, -- path = 1 per percorso relativo
				lualine_x = { "diagnostics", "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			extensions = { "nvim-tree", "toggleterm" },
		})
	end,
}
