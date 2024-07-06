require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"html",
		"cssls",
		-- "emmet_ls",
		"tailwindcss",
		"sqlls",
		"jsonls",
		"yamlls",
	},
	automatic_installation = true,
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"lua-language-server",
		"prettier",
		"prettierd",
		"eslint_d",
		"stylua",
	},
})
