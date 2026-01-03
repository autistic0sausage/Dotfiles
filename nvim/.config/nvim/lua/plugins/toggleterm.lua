return {
    "akinsho/toggleterm.nvim",
    config = true,
    cmd = "ToggleTerm",
    build = ":ToggleTerm",
    keys = {
        -- { "<leader>", "<cmd>ToggleTerm<cr>", desc = "Horizontal Terminal (cwd)" }, -- no bind, do it manually
        { "<leader>term", "<cmd>ToggleTerm dir=cwj direction=float name=epstein-term size=400<cr>" },
    },
    opts = {
        --open_mapping = [[<F4>]],
        direction = "horizontal",
        shade_filetypes = {},
        hide_numbers = true,
        insert_mappings = true,
        terminal_mappings = true,
        start_in_insert = true,
        close_on_exit = true,
    },
}
