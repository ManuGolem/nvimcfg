return {
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter", -- Cargar el plugin al entrar en el modo de inserción
		config = function()
			require("nvim-ts-autotag").setup({
				enable_close = true, -- Habilitar el cierre automático de etiquetas
				enable_rename = true, -- Habilitar el renombrado automático de etiquetas
				enable_close_on_slash = false, -- Deshabilitar el cierre automático al usar '/'
			})
		end,
	},
}
