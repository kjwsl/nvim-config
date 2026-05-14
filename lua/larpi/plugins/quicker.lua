return {
    'stevearc/quicker.nvim',
    ft = 'qf',
    keys = {
        {
            '<Leader>tq',
            function()
                require('quicker').toggle()
            end,
            desc = '[Quicker] Toggle quickfix',
        },
        {
            '<Leader>tl',
            function()
                require('quicker').toggle({ loclist = true })
            end,
            desc = '[Quicker] Toggle loclist',
        },
    },
    opts = {
        keys = {
            {
                '>',
                function()
                    quicker.expand({ before = 2, after = 2, add_to_existing = true })
                end,
                desc = 'Expand quickfix context',
            },
            {
                '<',
                function()
                    quicker.collapse()
                end,
                desc = 'Collapse quickfix context',
            },
        },
    },
}
