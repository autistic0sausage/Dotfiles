local Keymap = require("core.utils").Keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap({ desc = "Vscode Theme" }, "n", "<Space>gb", ":colorscheme vscode<CR>")

-- General
Keymap({ desc = "Leader key" }, "n", "<Space>", "")
Keymap({ desc = "Hide highlights" }, "n", "<ESC>", ":nohl<CR>")
Keymap({ desc = "Close buffer" }, "n", "<leader>c", ":bp|bd #<CR>")
Keymap({ desc = "Close buffer" }, "n", "<leader>q", ":q<CR>")
Keymap({ desc = "Close buffer" }, "n", "<leader>w", ":w<CR>")
Keymap({ desc = "Quit all" }, "n", "<leader>x", "<cmd>qa<CR>") -- Quit all
Keymap({ desc = "Toggle last open buffer" }, "n", "<Tab>", "<C-^>") -- Last open buffer

-- Text
Keymap({ desc = "Text wrap" }, "n", "<leader>tw", ":lua vim.wo.wrap = not vim.wo.wrap<CR>")

-- Resize windows
Keymap({ desc = "Resize window up" }, "n", "<C-Up>", ":resize +2<CR>")
Keymap({ desc = "Resize window down" }, "n", "<C-Down>", ":resize -2<CR>")
Keymap({ desc = "Resize window left" }, "n", "<C-Left>", ":vertical resize -2<CR>")
Keymap({ desc = "Resize window right" }, "n", "<C-Right>", ":vertical resize +2<CR>")

-- Better window navigation
Keymap({ desc = "Navigate to left window" }, "n", "<m-h>", "<C-w>h")
Keymap({ desc = "Navigate to bottom window" }, "n", "<m-j>", "<C-w>j")
Keymap({ desc = "Navigate to top window" }, "n", "<m-k>", "<C-w>k")
Keymap({ desc = "Navigate to right window" }, "n", "<m-l>", "<C-w>l")

-- Center when jumping around in search mode
Keymap({}, "n", "n", "nzz")
Keymap({}, "n", "N", "Nzz")
Keymap({}, "n", "*", "*zz")
Keymap({}, "n", "#", "#zz")
Keymap({}, "n", "g*", "g*zz")
Keymap({}, "n", "g#", "g#zz")

-- Stay in indent mode after indenting
Keymap({}, "v", "<", "<gv")
Keymap({}, "v", ">", ">gv")

Keymap({}, "x", "p", [["_dP]])

-- -- move text up & down
-- Keymap({}, "v", "<A-j>", ":move .+1<CR>==")
-- Keymap({}, "v", "<A-k>", ":move .-3<CR>==")

-- visual mode (linewise + block)
Keymap({}, "v", "J", ":m '>+1<CR>gv=gv")
Keymap({}, "v", "K", ":m '<-2<CR>gv=gv")

-- Join lines
Keymap({}, "n", "J", "mzJ`z")

-- -- move text up & down (visual block)
-- Keymap({}, "x", "<J>", ">+1<CR>gv-gv")
-- Keymap({}, "x", "<K>", "<-2<CR>gv-gv")
-- Keymap({}, "x", "<A-j>", ":move '>+1<CR>=='")
-- Keymap({}, "x", "<A-k>", ":move '<-2<CR>=='")

-- more good
Keymap({ desc = "" }, { "n", "o", "x" }, "<s-h>", "^")
Keymap({ desc = "" }, { "n", "o", "x" }, "<s-l>", "g_")

-- better delete
Keymap({ desc = " " }, 'n', 'db', 'vb"_d')

-- Vim formatting with =
Keymap({ desc = " " }, 'n', '=g', 'ggVG=<C-o>')

-- tailwind bearable to work with
Keymap({ desc = "" }, { "n", "x" }, "j", "gj")
Keymap({ desc = "" }, { "n", "x" }, "k", "gk")

Keymap({ desc = "" }, "t", "<C-;", "<C-\\><C-n>")

-- lazygit
Keymap({ desc = "Open lazygit in external terminal in current path" }, "n", "<leader>gg", function()
	local cwd = vim.fn.getcwd()
	-- Launch Alacritty with the current directory
	vim.fn.jobstart({ "alacritty", "--working-directory", cwd, "-e", "lazygit" }, { detach = true })
end)

-- alacritty
Keymap({ desc = "Open alacritty in current path" }, "n", "<leader>te", function()
	local cwd = vim.fn.getcwd()
	-- Launch Alacritty with the current directory
	vim.fn.jobstart({ "alacritty", "--working-directory", cwd }, { detach = true })
end)
