require("autocommands.highlight-on-yank")
require("autocommands.markdown-options")
require("core.colorschemes")
require("core.keymaps")
require("core.lsp")
require("core.options")

-- KEEP THIS LAST
-- This will automatically load all the plugins in ./lua/plugins/
-- give they respect the lazy specifications

require("core.lazy")

-- safety function
-- local status_ok, _ = pcall(require, "lspconfig")
-- if not status_ok then
-- 	return
-- end
--
-- require("user.lsp.lsp-installer")
-- require("user.lsp.handlers").setup()
