return {
    -- TODO: revert back when the fix is merged
    -- 'Bekaboo/dropbar.nvim',
    'cubewhy/dropbar.nvim',
    branch = 'fix-event',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },
    keys = {
        {
            '<Leader>;',
            function()
                require('dropbar.api').pick()
            end,
            desc = '[Dropbar] Pick symbols',
        },
        {
            '<Leader>[;',
            function()
                require('dropbar.api').goto_context_start()
            end,
            desc = '[Dropbar] Go to start of current context',
        },
        {
            '<Leader>];',
            function()
                require('dropbar.api').select_next_context()
            end,
            desc = '[Dropbar] Select next context',
        },
    },
}
