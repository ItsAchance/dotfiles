return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "cssls",
                    "gopls",
                    "html",
                    "lua_ls",
                    "tailwindcss",
                    "templ",
                    "ts_ls",
                },
                automatic_enable = {
                    exclude = {
                        "cssls",
                        "gopls",
                        "html",
                        "lua_ls",
                        "tailwindcss",
                        "templ",
                        "ts_ls",
                    },
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
    },
    -- Display LSP diagnostics
    vim.diagnostic.config({ virtual_text = true }),
}
