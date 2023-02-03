local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

local configs = require("lspconfig.configs")
local util = require("lspconfig.util")

configs.p4_lsp = {
    default_config = {
        cmd = { "p4_lsp" },
        filetypes = { "p4" },
        root_dir = util.path.dirname,
    },
    -- on_new_config = function(new_config) end;
    -- on_attach = function(client, bufnr) end;
    docs = {
        description = [[
Language Server Protocol for P4.
]]       ,
        default_config = {
            root_dir = [[root_pattern(".git")]],
        },
    },
}

require('lspconfig').p4_lsp.setup {}

lsp.setup()
