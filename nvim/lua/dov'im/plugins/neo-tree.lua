return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function ()
        local neotree = require("neo-tree")
        neotree.setup({
            close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
            default_component_configs = {
                name = {
                    highlight_opened_files = true,
                },
            },
        })
        vim.keymap.set("n", "=", "<CMD>Neotree reveal toggle<CR>", { desc = "Toogle Filetree" })
    end
}
