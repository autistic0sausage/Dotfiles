-- lua/core/colorschemes.lua
-- Uncomment ONE theme only

-- local THEME = "onedarkpro"
-- local THEME = "github_dark"
-- local THEME = "everforest"
local THEME = "vscode"
-- local THEME = "gruvbox"

vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function()
		vim.cmd.colorscheme(THEME)
	end,
})

return {}
