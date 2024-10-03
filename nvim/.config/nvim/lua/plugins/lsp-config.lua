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
    config = function ()
        require("mason-lspconfig").setup{
            ensure_installed  = {"lua_ls", "pyright", "gopls", "bashls", "ansiblels", "terraformls"}
     }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup({
        capabilities = capabilities
        })
      lspconfig.bashls.setup({
        capabilities = capabilities
        })
      lspconfig.pyright.setup({
        capabilities = capabilities
        })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
        })
      lspconfig.ansiblels.setup({
        capabilities = capabilities
        })
      lspconfig.terraformls.setup({
        capabilities = capabilities
        })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end,
  },
}
