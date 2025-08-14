return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        view_options = {
            -- Show files and directories that start with "."
            show_hidden = true,
        },
        columns = {
            "icon",
             "permissions",
             "size",
             "mtime",
        },
    },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
