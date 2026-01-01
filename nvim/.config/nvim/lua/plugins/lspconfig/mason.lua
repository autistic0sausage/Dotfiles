return {
	"williamboman/mason.nvim",
	-- Automatically install LSPs and related tools
	-- NOTE: opts = {} is the same as calling require("mason").setup({})
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"mason-org/mason-lspconfig.nvim",

		-- Useful status updates for LSP
		{ "j-hui/fidget.nvim", opts = {} },

		-- Extra capabilities (cmp/blink)
		"saghen/blink.cmp",
	},
	config = function()
		-- Enable mason
		require("mason").setup({
			ui = {
				border = "rounded",
			},
		})

		-- require("mason-lspconfig").setup()

		--  Enable the following language servers
		--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
		--
		--  Add any additional override configuration in the following tables. Available keys are:
		--  - cmd (table): Override the default command used to start the server
		--  - filetypes (table): Override the default list of associated filetypes for the server
		--  - capabilities (table): Override the fields in capabilities. Can be used to disable certain LSP
		--  - settings (table): Override the default settings passed when initializing the server.
		--  	  For example, to see the options for `lua_ls`, you could go to: https://luals.github.com

		-- Install formatters, and linters
		require("mason-tool-installer").setup({
			ensure_installed = {
				"bashls",
				"cssls",
				"eslint",
				"html",
				"jsonls",
				"lua_ls",
				"marksman",
				"prettier", -- JavaScript/TypeScript formatter
				"shellcheck", -- Shell script linter
				"shfmt", -- Shell script formatter
				"stylua", -- Lua formatter
				"tailwindcss",
				"taplo",
				"yamlls",
				-- "basedpyright",
				-- "black", -- Python formatter
				-- "css_variables",
				-- "cssmodules_ls",
				-- "dockerls",
				-- "gopls",
				-- "isort", -- Python import organizer
				-- "lemminx",
				-- "nginx_language_server",
				-- "pylint", -- Python linter
				-- "rust_analyzer",
				-- "ts_ls",
			},
		})
	end,
}
