-- init.lua - Neovim configurazione completaa

vim.g.mapleader = " "
-- Impostazioni di base
require("core.options")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugin con lazy.nvim (Qui dentro vanno messi gli import dei plugins)
require("lazy").setup({

	-- Tema
	--{ "folke/tokyonight.nvim", lazy = false, priority = 1000 },

	-- Barra di stato
	{ import = "plugins.lualine" },

	-- File tree
	{ import = "plugins.nvim-tree" },

	-- LSP client
	{ import = "plugins.lspconfig" },

	-- Completamento automatico + Snippets
	{ import = "plugins.cmp" },

	-- Autopairs: chiusura automatica di (), {}, "", ecc.
	{ import = "plugins.autopairs" },

	-- Latex
	{ import = "plugins.latex" },

	-- Indent Scope guide
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = "BufReadPre",
		config = function()
			require("ibl").setup({
				indent = { char = "│" },
				scope = {
					enabled = true,
					show_start = true,
					show_end = true,
					highlight = { "Function", "Label" },
				},
			})
		end,
	},

	-- Gitsigns: mostra modifiche Git inline
	{ import = "plugins.gitsigns" },

	-- Notify: popup per notifiche eleganti
	{ import = "plugins.notify" },

	-- Ricerca fuzzy (Telescope)
	{ import = "plugins.telescope" },

	-- Evidenziazione e indentazione avanzata (TreeSitter)
	{ import = "plugins.treesitter" },

	-- Disabilita luarocks/hererocks se non usato
	--rocks = {
	--hererocks = false,
	--},

	-- Mason: gestione LSP, formatter, linter
	{ import = "plugins.mason" },

	-- noice : gestione elegante dei messaggi, hover e firma LSP
	{ import = "plugins.noice" },

	-- conform : formattazione automatica co Prettier e Stylua
	{ import = "plugins.conform" },

	-- Vista elegante degli errori diagnostici con comandi e scorciatoie comode
	{ import = "plugins.trouble" },

	-- Tema tokyonight
	{ import = "plugins.theme" },
	-- Tema Solarized-Osaka
	--  { import = "plugins.theme_2" },
	--  Markdown
	{ import = "plugins.markdown" },
})

-- Tema
--vim.cmd([[colorscheme tokyonight]])

-- Keymaps
require("core.keymaps")

-- LSP (linguaggi)
--require("lsp")

-- Tema
--require("core.theme")

-- Notifiche di diagnostica
require("core.diagnostic")
