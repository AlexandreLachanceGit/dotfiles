require("lspconfig").pyright.setup {}

require("lspconfig").sumneko_lua.setup {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT"
            },
            diagnostics = {
                globals = {"vim", "use"}
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            },
            telemetry = {
                enable = false
            }
        }
    }
}

require("lspconfig").rust_analyzer.setup {}

require("lspconfig").tsserver.setup {}
