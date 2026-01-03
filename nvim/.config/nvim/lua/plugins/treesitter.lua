-- https://github.com/nvim-treesitter/nvim-treesitter

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- event = { "BufReadPre", "BufNewFile" },
    -- lazy = true,
    opts = {
        highlight = {
            enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- auto install parsers
        auto_install = {
            enable = true,
        },
        -- ensure these language parsers are installed
        ensure_installed = {
            "bash",
            "css",
            "dockerfile",
            "gitignore",
            "graphql",
            "html",
            "javascript",
            "json",
            "kdl",
            "lua",
            "markdown",
            "markdown_inline",
            "prisma",
            "query",
            "svelte",
            "toml",
            "tsx",
            "typescript",
            "vim",
            "yaml",
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-space>",
                node_incremental = "<C-space>",
                scope_incremental = false,
                node_decremental = "<bs>",
            },
        },
    },
}
