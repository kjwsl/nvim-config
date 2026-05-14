return {
    'stevearc/overseer.nvim',
    cmds = {
        'OverseerRun',
        'OverseerOpen',
        'OverseerShell',
        'OverseerToggle',
        'OverseerTaskAction',
        'OverseerClose',
    },
    keys = {
        { '<Leader>cor', '<Cmd>OverseerRun<CR>', desc = '[Overseer] Run' },
        { '<Leader>cos', '<Cmd>OverseerShell<CR>', desc = '[Overseer] Shell' },
        { '<Leader>coo', '<Cmd>OverseerOpen<CR>', desc = '[Overseer] Open' },
        { '<Leader>coa', '<Cmd>OverseerTaskAction<CR>', desc = '[Overseer] Task Actions' },
        { '<Leader>cot', '<Cmd>OverseerToggle<CR>', desc = '[Overseer] Toggle' },
        { '<Leader>coc', '<Cmd>OverseerClose<CR>', desc = '[Overseer] Close' },
    },
    opts = {
        dap = true,
        templates = {
            'builtin',
            'larp.cpp',
        },
    },
}
