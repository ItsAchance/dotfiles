return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").install({
                "lua", "vim", "vimdoc", "query",
                "markdown", "markdown_inline",
                "bash", "json", "yaml", "toml",
                "go", "gomod", "gosum",
                "html", "css", "javascript", "typescript", "tsx",
            })

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    local ft = args.match
                    local lang = vim.treesitter.language.get_lang(ft) or ft
                    if pcall(vim.treesitter.language.add, lang) then
                        pcall(vim.treesitter.start, args.buf, lang)
                        vim.bo[args.buf].indentexpr =
                        "v:lua.require'nvim-treesitter'.indentexpr()"
                    end
                end,
            })
        end,
    },
}
