require("core.colorschemes")
require("core.keymaps")
require("core.options")
require("core.lazy")
-- require("autocommands.markdown-options")
require("autocommands.highlight-on-yank")
require("autocommands.init")
require("core.lsp")


-- KEEP THIS LAST
-- This will automatically load all the plugins in ./lua/plugins/
-- give they respect the lazy specifications

-- safety function
-- local status_ok, _ = pcall(require, "lspconfig")
-- if not status_ok then
-- 	return
-- end
--
-- require("user.lsp.lsp-installer")
-- require("user.lsp.handlers").setup()
