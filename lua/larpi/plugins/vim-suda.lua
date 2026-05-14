return {
    -- Sudo write/read
    'lambdalisue/vim-suda',
    keys = {
        { '<Leader>Sw', '<Cmd>SudaWrite<CR>', mode = 'n', desc = '[Suda] Sudo Write' },
        { '<Leader>Sr', '<Cmd>SudaRead<CR>', mode = 'n', desc = '[Suda] Sudo Read' },
    },
    cmd = { 'SudaWrite', 'SudaRead' },
    init = function()
        vim.g.suda_smart_edit = 1
    end,
}
