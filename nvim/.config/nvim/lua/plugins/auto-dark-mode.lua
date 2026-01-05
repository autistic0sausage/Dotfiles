return {
    "f-person/auto-dark-mode.nvim",
    opts = {
        set_dark_mode = function()
            vim.cmd "colorscheme vscode"
        end,

        set_light_mode = function()
            vim.cmd "colorscheme github_light_tritanopia"
            -- vim.cmd "colorscheme gruvbox" -- theme
            -- vim.cmd "set background=light" -- sets background to light so gruvbox won't turn dark
        end,
        update_intervals = 3000,
        fallback = "dark",
    },
}
