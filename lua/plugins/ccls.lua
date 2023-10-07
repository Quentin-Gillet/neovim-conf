return {
    "ranjithshegde/ccls.nvim",
    enabled = false,
    opts = function()
        local util = require("lspconfig.util")
        local server_config = {
            filetypes = { "c" },
            root_dir = function(fname)
                return util.root_pattern(".ccls")(fname)
            end,
            init_options = { cache = {
                directory = vim.fs.normalize "~/.cache/ccls" -- if on nvim 0.8 or higher
            } },
            --on_attach = require("my.attach").func,
            --capabilities = my_caps_table_or_func
        }
        return {
            lsp = { lspconfig = server_config },
        }
    end,
}
