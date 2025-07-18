return {
	"sainnhe/everforest",
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.everforest_enable_italic = true
		vim.o.background = "dark"
		vim.g.everforest_better_performance = 1
		vim.g.everforest_background = "hard"
		vim.cmd.colorscheme("everforest")
	end,
}
