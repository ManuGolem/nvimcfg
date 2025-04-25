-- Standalone plugins with less than 10 lines of config go here
return {
    {
        -- Hints keybinds
        "folke/which-key.nvim",
    },
    {
        -- Autoclose parentheses, brackets, quotes, etc.
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        opts = {},
    },
    {
        -- Highlight todo, notes, etc in comments
        "folke/todo-comments.nvim",
        event = "VimEnter",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { signs = false },
    },

    -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
    {
        "numToStr/Comment.nvim",
        opts = {
            -- add any options here
        },
    },
}
