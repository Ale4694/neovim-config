local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- TypeScript/JavaScript (nuovo nome: ts_ls)
lspconfig.ts_ls.setup({
	capabilities = capabilities,
})

-- Python
lspconfig.pyright.setup({
	capabilities = capabilities,
})

-- C/C++
lspconfig.clangd.setup({
	capabilities = capabilities,
})

-- Emmet (per HTML, CSS, React)
lspconfig.emmet_ls.setup({
	capabilities = capabilities,
	filetypes = {
		"html",
		"css",
		"scss",
		"javascriptreact",
		"typescriptreact",
	},
})

-- ESLint
lspconfig.eslint.setup({
	capabilities = capabilities,
	settings = {
		format = { enable = true },
	},
})
