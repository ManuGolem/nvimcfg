require("core.options")
require("core.keymaps")
-- Instalacion de lazy plugin
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)
--Plugins
require("lazy").setup({
	require("plugins.neotree"),
	require("plugins.everforest"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.autocomplete"),
	require("plugins.lsp"),
	require("plugins.tailwindcss"),
	require("plugins.none-ls"),
	require("plugins.alpha"),
	require("plugins.ident-blankline"),
	require("plugins.misc"),
	require("plugins.diffview"),
	require("plugins.autotag"),
	require("plugins.neoscroll"),
	require("plugins.highlight"),
	require("plugins.latex"),
})
