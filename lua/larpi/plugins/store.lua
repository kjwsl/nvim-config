return {
    -- Awesome Neovim plugin list
    'alex-popov-tech/store.nvim',
    cmd = 'Store',
    keys = {
        { '<Leader>ps', '<Cmd>Store<CR>', desc = '[Store] Open Plugin Store' },
    },
    opts = {
        telemetry = false,
    },
}
