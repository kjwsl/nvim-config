return {
    'chrisgrieser/nvim-rip-substitute',
    cmd = 'RipSubstitute',
    keys = {
        {
            '<Leader>rr',
            function()
                require('rip-substitute').sub()
            end,
            mode = { 'n', 'x' },
            desc = ' rip substitute',
        },
    },
    opts = {},
}
