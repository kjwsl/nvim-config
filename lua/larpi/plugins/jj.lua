return {
    'nicolasgb/jj.nvim',
    dependencies = {
        'esmuellert/codediff.nvim',
        'folke/snacks.nvim',
    },
    opts = {
        terminal = {
            cursor_render_delay = 10, -- Adjust if cursor position isn't restoring correctly
        },
        diff = {
            backend = 'codediff',
        },
    },
    cmd = 'J',
    keys = {
        {
            '<Leader>jl',
            function()
                require('jj.cmd').log()
            end,
            desc = '[JJ] Log',
        },
        {
            '<Leader>jL',
            function()
                require('jj.cmd').log({
                    revisions = '::',
                })
            end,
            desc = '[JJ] Log All',
        },
        {
            '<Leader>jC',
            function()
                require('jj.cmd').commit()
            end,
            desc = '[JJ] Commit',
        },
        {
            '<Leader>jD',
            function()
                require('jj.cmd').describe()
            end,
            desc = '[JJ] Describe',
        },
        {
            '<Leader>je',
            function()
                require('jj.cmd').edit()
            end,
            desc = '[JJ] Edit',
        },
        {
            '<Leader>jn',
            function()
                require('jj.cmd').new()
            end,
            desc = '[JJ] New',
        },
        {
            '<Leader>jsh',
            function()
                require('jj.cmd').j('show')
            end,
            desc = '[JJ] Show',
        },
        {
            '<Leader>jst',
            function()
                require('jj.cmd').status()
            end,
            desc = '[JJ] Status',
        },
        {
            '<Leader>jsp',
            function()
                require('jj.cmd').split()
            end,
            desc = '[JJ] Split',
        },
        {
            '<Leader>jsq',
            function()
                require('jj.cmd').squash()
            end,
            desc = '[JJ] Squash',
        },
        {
            '<Leader>jou',
            function()
                require('jj.cmd').undo()
            end,
            desc = '[JJ] Undo Operation',
        },
        {
            '<Leader>jor',
            function()
                require('jj.cmd').redo()
            end,
            desc = '[JJ] Redo Operation',
        },
        {
            '<Leader>jbc',
            function()
                require('jj.cmd').bookmark_create()
            end,
            desc = '[JJ] Create Bookmark',
        },
        {
            '<Leader>jbd',
            function()
                require('jj.cmd').bookmark_delete()
            end,
            desc = '[JJ] Delete Bookmark',
        },
        {
            '<Leader>jbm',
            function()
                require('jj.cmd').bookmark_move()
            end,
            desc = '[JJ] Move Bookmark',
        },
        {
            '<Leader>ja',
            function()
                require('jj.cmd').abandon()
            end,
            desc = '[JJ] Abandon',
        },
        {
            '<Leader>jp',
            function()
                require('jj.cmd').push()
            end,
            desc = '[JJ] Push',
        },
        {
            '<Leader>jf',
            function()
                require('jj.cmd').fetch()
            end,
            desc = '[JJ] Fetch',
        },
        {
            '<Leader>jdf',
            function()
                require('jj.diff').open_vdiff()
            end,
            desc = '[JJ] Open VDiff',
        },
        {
            '<Leader>jdF',
            function()
                require('jj.diff').open_hdiff()
            end,
            desc = '[JJ] Open HDiff',
        },
        {
            '<Leader>jps',
            function()
                require('jj.picker').status()
            end,
            desc = '[JJ] Pick Status',
        },
        {
            '<Leader>jph',
            function()
                require('jj.picker').file_history()
            end,
            desc = '[JJ] Pick File History',
        },
    },
}
