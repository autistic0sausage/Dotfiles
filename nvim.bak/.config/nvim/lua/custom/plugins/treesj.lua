local M = {
  "Wansmer/treesj",
  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  }
}

function M.config()
	vim.keymap.set("n", "<leader>tu", ":lua require('treesj').toggle()<CR>")
end

return M
