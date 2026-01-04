local M = {
    "akinsho/toggleterm.nvim",
}

M.config = function()
    -- safely require toggleterm
    local ok, toggleterm = pcall(require, "toggleterm")
    if not ok then
        return
    end

    toggleterm.setup {
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
            border = "curved",
            winblend = 0,
            highlights = {
                border = "Normal",
                background = "Normal",
            },
        },
    }

    -- terminal-local keymaps
    local function set_terminal_keymaps()
        local opts = { noremap = true }
        -- Enter escape mode within shell
        vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
        -- vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
        -- vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
        -- vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
        -- vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
        -- vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
    end

    vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*",
        callback = set_terminal_keymaps,
    })

    -- custom terminals
    -- they will work with `:lua LAZYGIT_TOGGLE()` in cmdline
    local Terminal = require("toggleterm.terminal").Terminal

    local lazygit = Terminal:new { cmd = "lazygit", hidden = true }
    _G.LAZYGIT_TOGGLE = function()
        lazygit:toggle()
    end

    local node = Terminal:new { cmd = "node", hidden = true }
    _G.NODE_TOGGLE = function()
        node:toggle()
    end

    local ncdu = Terminal:new { cmd = "ncdu", hidden = true }
    _G.NCDU_TOGGLE = function()
        ncdu:toggle()
    end

    local btop = Terminal:new { cmd = "btop", hidden = true }
    _G.BTOP_TOGGLE = function()
        btop:toggle()
    end

    local python = Terminal:new { cmd = "python", hidden = true }
    _G.PYTHON_TOGGLE = function()
        python:toggle()
    end
end

return M
