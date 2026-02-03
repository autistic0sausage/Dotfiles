return {

    -- -- nvimtree
    -- {
    --     "nvim-tree/nvim-tree.lua",
    --     -- dependencies = "nvim-tree/nvim-web-devicons",
    --     dependencies = "nvim-tree/nvim-web-devicons",
    --     opts = {
    --         sort = { sorter = "case_sensitive" },
    --         view = { width = 55, side = "right" },
    --         renderer = { group_empty = true },
    --         filters = { dotfiles = false },
    --     },
    -- },

    -- neotree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "antosha417/nvim-lsp-file-operations",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
        },
        config = function()
            require("lsp-file-operations").setup()
        end,
    },
    {
        "s1n7ax/nvim-window-picker",
        version = "2.*",
        config = function()
            require("window-picker").setup {
                filter_rules = {
                    include_current_win = false,
                    autoselect_one = true,
                    -- filter using buffer options
                    bo = {
                        -- if the file type is one of following, the window will be ignored
                        filetype = { "neo-tree", "neo-tree-popup", "notify" },
                        -- if the buffer type is one of following, the window will be ignored
                        buftype = { "terminal", "quickfix" },
                    },
                },
            }
        end,
    },
}
