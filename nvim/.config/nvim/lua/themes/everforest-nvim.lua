local M = {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
}

M.config = function()
	require("everforest").setup({
		-- config here
		inverse = {
			match_paren = true,
			visual = false,
			search = false,
		}
	})
end

return M
