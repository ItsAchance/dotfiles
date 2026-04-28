return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                show_end_of_buffer = true,
                custom_highlights = function(colors)
                    return {
                        NormalFloat = { bg = colors.surface0 },
                        FloatBorder = { fg = colors.blue, bg = colors.surface0 },
                    }
                end,
            })
            vim.cmd.colorscheme "catppuccin-mocha"
        end
    }
}
