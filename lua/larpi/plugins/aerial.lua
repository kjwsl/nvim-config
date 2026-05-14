return {
    'stevearc/aerial.nvim',
    opts = {
        -- optionally use on_attach to set keymaps when aerial has attached to a buffer
        on_attach = function(bufnr)
            -- Jump forwards/backwards with '{' and '}'
            vim.keymap.set('n', '{', '<Cmd>AerialPrev<CR>', { buffer = bufnr })
            vim.keymap.set('n', '}', '<Cmd>AerialNext<CR>', { buffer = bufnr })
        end,
        autojump = true,
        filter_kind = false,
    },
    -- Optional dependencies
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    cmd = { 'AerialToggle' },
    keys = {
        {
            '<Leader>to',
            function()
                require('aerial').toggle()
            end,
            desc = '[Aerial] Toggle Overview',
        },
    },
}
