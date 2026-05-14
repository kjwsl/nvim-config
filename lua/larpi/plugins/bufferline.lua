return {
    -- Tabs
    'akinsho/bufferline.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {},
    keys = {
        { 'L', '<Cmd>BufferLineCycleNext<CR>', mode = 'n', desc = '[Bufferline] Next Buffer' },
        { 'H', '<Cmd>BufferLineCyclePrev<CR>', mode = 'n', desc = '[Bufferline] Previous Buffer' },
        { '<Leader>>', '<Cmd>BufferLineMoveNext<CR>', mode = 'n', desc = '[Bufferline] Move Buffer to the Right' },
        { '<Leader><', '<Cmd>BufferLineMovePrev<CR>', mode = 'n', desc = '[Bufferline] Move Buffer to the Left' },
        { '<Leader>bc', '<Cmd>BufferLinePickClose<CR>', mode = 'n', desc = '[Bufferline] Close buffer' },
        { '<Leader>bp', '<Cmd>BufferLinePick<CR>', mode = 'n', desc = '[Bufferline] Pick Buffer' },
        { '<Leader>br', '<Cmd>BufferLineTabRename<CR>', mode = 'n', desc = '[Bufferline] Rename Tab' },
    },
}
