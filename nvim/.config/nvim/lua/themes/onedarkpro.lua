local M = {
	"olimorris/onedarkpro.nvim",
	priority = 1000, -- Ensure it loads first
}

M.config = function()
	require("onedarkpro").setup({
		highlights = {
			Comment = { italic = true },
			Directory = { bold = true },
			ErrorMsg = { italic = true, bold = true },
		},
	})
	vim.cmd("colorscheme onedark")
end

return M
