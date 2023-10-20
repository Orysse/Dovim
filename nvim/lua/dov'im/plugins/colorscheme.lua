return {
    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        config = true,
    },

    -- dracula
    {
        'Mofiqul/dracula.nvim',
        priority = 1000, -- make sure to load this before all the other start plugins
    },

    -- rose-pine
    {
        'rose-pine/neovim', 
        name = 'rose-pine',
        priority = 1000, -- make sure to load this before all the other start plugins
    },

    -- rose-pine
    {
        'rebelot/kanagawa.nvim', 
        priority = 1000, -- make sure to load this before all the other start plugins
    },

    -- tokyonight
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = { style = "moon" },
        priority = 1000, -- make sure to load this before all the other start plugins
    },

    -- everforest
    {
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
    },

    -- catppuccin
    {
        "catppuccin/nvim",
        priority = 1000,
        opts = {
            integrations = {
                cmp = true,
                mason = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                notify = true,
                telescope = true,
                treesitter = true,
                neotree = true,
                lualine = false,
            },
        },
        config = function()
            vim.cmd([[colorscheme rose-pine-moon]])
    end,
    },


}
