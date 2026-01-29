return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        sort = { sorter = "case_sensitive" },
        view = { width = 36, side = "right" },
        renderer = { group_empty = true },
        filters = { dotfiles = false },
    },
}
