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
		local on_attach = function(_, bufnr)
			-- Mapear 'gd' para ir a definición (LSP nativo)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })

			-- Opcional: otros mapeos útiles
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Go to References" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Show Documentation" })
		end
		local lspconf = require("lspconfig")
		lspconf.lua_ls.setup({ on_attach = on_attach })
		lspconf.rust_analyzer.setup({ on_attach = on_attach })
		lspconf.ts_ls.setup({ on_attach = on_attach })
		lspconf.eslint.setup({
			on_attach = function(client, bufnr)
				on_attach(client, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = "EslintFixAll",
				})
			end,
		})
		lspconf.zls.setup({ on_attach = on_attach })
		lspconf.clangd.setup({ on_attach = on_attach })
		lspconf.html.setup({ on_attach = on_attach })
		lspconf.cssls.setup({ on_attach = on_attach })
		lspconf.tailwindcss.setup({ on_attach = on_attach })
	end,
}
