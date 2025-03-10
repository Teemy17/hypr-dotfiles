return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "clangd", "cmake", "cssls", "html",}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            require'lspconfig'.tsserver.setup{}
            require'lspconfig'.eslint.setup{}
            require'lspconfig'.tailwindcss.setup{}
            require'lspconfig'.html.setup{}
            require'lspconfig'.cssls.setup{}
            end, 
    },
}

