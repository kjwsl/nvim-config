return {
    'folke/trouble.nvim',
    branch = 'main', -- IMPORTANT!
    keys = {
        {
            '<Leader>xx',
            '<Cmd>Trouble diagnostics toggle<CR>',
            desc = 'Diagnostics (Trouble)',
        },
        {
            '<Leader>xX',
            '<Cmd>Trouble diagnostics toggle filter.buf=0<CR>',
            desc = 'Buffer Diagnostics (Trouble)',
        },
        {
            '<Leader>cs',
            '<Cmd>Trouble symbols toggle focus=false<CR>',
            desc = 'Symbols (Trouble)',
        },
        {
            '<Leader>cl',
            '<Cmd>Trouble lsp toggle focus=false win.position=right<CR>',
            desc = 'LSP Definitions / references / ... (Trouble)',
        },
        {
            '<Leader>xL',
            '<Cmd>Trouble loclist toggle<CR>',
            desc = 'Location List (Trouble)',
        },
        {
            '<Leader>xQ',
            '<Cmd>Trouble qflist toggle<CR>',
            desc = 'Quickfix List (Trouble)',
        },
    },
    opts = {}, -- for default options, refer to the configuration section for custom setup.
}
