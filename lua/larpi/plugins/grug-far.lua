return {
    'MagicDuck/grug-far.nvim',
    cmd = { 'GrugFar', 'GrugFarWithin' },
    keys = {
        {
            '<Leader>rg',
            function()
                require('grug-far').open()
            end,
            mode = 'n',
            desc = '[GrugFar] Open GrugFar',
        },
        {
            '<Leader>rg',
            function()
                require('grug-far').with_visual_selection()
            end,
            mode = 'x',
            desc = '[GrugFar] Open GrugFar',
        },
    },
    opts = {},
}
