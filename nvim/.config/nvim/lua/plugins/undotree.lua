-- local M = {
-- 	"mbbill/undotree",
--     dependencies = {
--         "nvim-tree/nvim-web-devicons",
--     }
-- }
--
-- M.config = function()
-- 	require("undotree").setup({})
-- end
--
-- return M

return {
	"mbbill/undotree",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	-- config = function()
	-- 	require("undotree").setup{}
	-- end,
}
