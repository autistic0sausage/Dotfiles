local M = {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
}

M.config = function()
    require("onedarkpro").setup {
        -- Inverse highlight for different types
        inverse = {
            match_paren = true,
            visual = false,
            search = false,
        },
        highlights = {
            Comment = { italic = true },
            Directory = { bold = true },
            ErrorMsg = { italic = true, bold = true },
        },
    }
    vim.cmd "colorscheme onedark"
end

return M
