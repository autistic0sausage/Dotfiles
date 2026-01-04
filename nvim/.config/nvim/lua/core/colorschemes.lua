-- lua/core/colorschemes.lua
-- Uncomment ONE theme only

-- local THEME = "everforest"
-- local THEME = "github_dark"
-- local THEME = "gruvbox"
-- local THEME = "onedarkpro"

-- Frequently Used Themes
-- local THEME = "github_light_default"
-- local THEME = "darkplus"
local THEME = "vscode"

vim.api.nvim_create_autocmd("VimEnter", {
    once = true,
    callback = function()
        vim.cmd.colorscheme(THEME)
    end,
})

return {}
