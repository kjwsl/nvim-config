return {
    'lewis6991/gitsigns.nvim',
    opts = {},
    event = { 'BufReadPre', 'BufNewFile' },
    keys = {
        {
            ']c',
            function()
                if vim.wo.diff then
                    vim.cmd.normal({ ']c', bang = true })
                else
                    require('gitsigns').nav_hunk('next')
                end
            end,
            desc = '[GitSigns] Go to Next Hunk',
        },
        {
            '[c',
            function()
                if vim.wo.diff then
                    vim.cmd.normal({ '[c', bang = true })
                else
                    require('gitsigns').nav_hunk('prev')
                end
            end,
            mode = 'n',
            desc = '[GitSigns] Go to Previous Hunk',
        },

        -- Actions
        {
            '<Leader>hs',
            function()
                require('gitsigns').stage_hunk()
            end,
            mode = 'n',
            desc = '[GitSigns] Stage Hunk',
        },
        {
            '<Leader>hr',
            function()
                require('gitsigns').reset_hunk()
            end,
            mode = 'n',
            desc = '[GitSigns] Reset Hunk',
        },
        {
            '<Leader>hs',
            function()
                require('gitsigns').stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
            end,
            mode = 'x',
            desc = '[GitSigns] Stage Hunk',
        },
        {
            '<Leader>hr',
            function()
                require('gitsigns').reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
            end,
            mode = 'x',
            desc = '[GitSigns] Reset Hunk',
        },
        {
            mode = 'n',
            '<Leader>hS',
            function()
                require('gitsigns').stage_buffer()
            end,
            desc = '[GitSigns] Stage Buffer',
        },
        {
            mode = 'n',
            '<Leader>hu',
            function()
                require('gitsigns').undo_stage_hunk()
            end,
            desc = '[GitSigns] Undo Stage Hunk',
        },
        {
            mode = 'n',
            '<Leader>hR',
            function()
                require('gitsigns').reset_buffer()
            end,
            desc = '[GitSigns] Reset Buffer',
        },
        {
            mode = 'n',
            '<Leader>hp',
            function()
                require('gitsigns').preview_hunk()
            end,
            desc = '[GitSigns] Preview Hunk',
        },
        {
            mode = 'n',
            '<Leader>hb',
            function()
                require('gitsigns').blame_line({ full = true })
            end,
            desc = '[GitSigns] Blame Line',
        },
        {
            mode = 'n',
            '<Leader>tb',
            function()
                require('gitsigns').toggle_current_line_blame()
            end,
            desc = '[GitSigns] Toggle Blame Line',
        },
        {
            mode = 'n',
            '<Leader>hd',
            function()
                require('gitsigns').diffthis()
            end,
            desc = '[GitSigns] Diff This',
        },
        {
            mode = 'n',
            '<Leader>hD',
            function()
                require('gitsigns').diffthis('~')
            end,
            desc = '[GitSigns] Diff This ~',
        },
        {
            mode = 'n',
            '<Leader>td',
            function()
                require('gitsigns').toggle_deleted()
            end,
            desc = '[GitSigns] Toggle Deleted',
        },

        -- Text object
        {
            'ih',
            function()
                require('gitsigns').select_hunk()
            end,
            mode = { 'o', 'x' },
            desc = '[GitSigns] Select Hunk',
        },
    },
}
