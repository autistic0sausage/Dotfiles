-- Core neovim options
local options = {
	breakindent = true,
	clipboard = "unnamedplus",
	completeopt = { "menuone", "noselect" },
	cursorline = false,
	expandtab = true,
	fillchars = { eob = " " },
	foldlevelstart = 200,
	ignorecase = true,
	inccommand = "split",
	laststatus = 0,
	mouse = "a",
	number = true,
	relativenumber = true,
	ruler = false,
	scrolloff = 8,
	shiftwidth = 4,
	showmode = false,
	signcolumn = "yes",
	smartcase = true,
	splitbelow = true,
	splitright = true,
	tabstop = 4,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 250,
	wrap = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt_local.linebreak = false
-- vim.opt.formatoptions:remove "t",
