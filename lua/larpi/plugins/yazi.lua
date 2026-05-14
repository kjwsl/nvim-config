return {
    'mikavilpas/yazi.nvim',
    version = '*',
    event = 'VeryLazy',
    dependencies = {
        { 'nvim-lua/plenary.nvim', lazy = true },
    },
    keys = {
        {
            '<Leader>-',
            '<Cmd>Yazi<CR>',
            mode = { 'n', 'x' },
            desc = '[Yazi] Open yazi at the current file',
        },
        {
            '<Leader>ty',
            '<Cmd>Yazi<CR>',
            mode = { 'n', 'x' },
            desc = '[Yazi] Open yazi at the current file',
        },
        {
            -- Open in the current working directory
            '<Leader>tY',
            '<Cmd>Yazi cwd<CR>',
            desc = "[Yazi] Open the file manager in nvim's working directory",
        },
    },
    ---@type YaziConfig | {}
    opts = {
        -- enable it if you want to open yazi instead of netrw, see below for more info
        open_for_directories = false,
        keymaps = {
            show_help = '?',
        },
    },
}
