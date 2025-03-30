return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"ts_ls",
				"eslint",
				"zls",
				"clangd",
				"html",
				"cssls",
				"tailwindcss",
			},
		})

		local lspconf = require("lspconfig")
		lspconf.lua_ls.setup({})
		lspconf.rust_analyzer.setup({})
		lspconf.ts_ls.setup({})
		lspconf.eslint.setup({
			on_attach = function(_, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = "EslintFixAll",
				})
			end,
		})
		lspconf.zls.setup({})
		lspconf.clangd.setup({})
		lspconf.html.setup({})
		lspconf.cssls.setup({})
		lspconf.tailwindcss.setup({})
	end,
}
