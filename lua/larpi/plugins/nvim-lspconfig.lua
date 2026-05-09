return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNew' },
    dependencies = {
        {
            'mason-org/mason.nvim',
            opts = {},
            cmd = {
                'Mason',
                'MasonInstall',
                'MasonLog',
                'MasonUninstall',
                'MasonUninstallAll',
                'MasonUpdate',
            },
            keys = {
                { '<leader>mm', '<cmd>Mason<cr>', desc = '[Mason] Open Mason', silent = true },
            },
        },
        {
            'mason-org/mason-lspconfig.nvim',
            opts = {
                ensure_installed = {
                    'vimls',
                    'lua_ls',
                    'clangd',
                    'tombi',
                },
                handlers = {
                    -- Disable rust_analyzer so rustaceanvim can handle it
                    rust_analyzer = function() end, 
                },
            },
            dependencies = {
                'mason-org/mason.nvim',
                'neovim/nvim-lspconfig',
            },
        },
    },
}
