-- Core neovim options
local options = {
    breakindent = true,
    clipboard = "unnamedplus",
    completeopt = { "menuone", "noselect" },
    cursorline = false,
    fillchars = { eob = " " },
    foldlevelstart = 200,
    ignorecase = true,
    inccommand = "split",
    laststatus = 0,
    cmdheight = 0,
    mouse = "a",
    number = true,
    relativenumber = true,
    ruler = false,
    scrolloff = 8,
    sidescroll = 10,
    showmode = false,
    signcolumn = "yes",
    smartcase = true,
    splitbelow = true,
    splitright = true,
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 250,
    wrap = false,

    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- vim.g.loaded_matchparen = true
-- vim.g.matchparen = true
vim.opt_local.linebreak = false
-- vim.opt.formatoptions:remove "t",
