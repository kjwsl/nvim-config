return {
    -- {
    --     'LintaoAmons/bookmarks.nvim',
    --     tag = 'v1.4.2', -- optional, pin the plugin at specific version for stability
    --     dependencies = {
    --         { 'nvim-telescope/telescope.nvim' },
    --         { 'stevearc/dressing.nvim' }, -- optional: to have the same UI shown in the GIF
    --     },
    --
    --     keys = {
    --         { 'mm', mode = { 'n', 'v' }, desc = 'Mark current line into active BookmarkList.' },
    --         { 'mo', mode = { 'n', 'v' }, desc = 'Go to bookmark at current active BookmarkList' },
    --         { 'ma', mode = { 'n', 'v' }, desc = 'Find and trigger a bookmark command.' },
    --         { 'mg', mode = { 'n', 'v' }, desc = 'Go to latest visited/created Bookmark' },
    --     },
    --     config = function()
    --         larp.fn.map({ 'n', 'v' }, 'mm', '<cmd>BookmarksMark<cr>', { desc = 'Mark current line into active BookmarkList.' })
    --         larp.fn.map({ 'n', 'v' }, 'mo', '<cmd>BookmarksGoto<cr>', { desc = 'Go to bookmark at current active BookmarkList' })
    --         larp.fn.map({ 'n', 'v' }, 'ma', '<cmd>BookmarksCommands<cr>', { desc = 'Find and trigger a bookmark command.' })
    --         larp.fn.map({ 'n', 'v' }, 'mg', '<cmd>BookmarksGotoRecent<cr>', { desc = 'Go to latest visited/created Bookmark' })
    --     end,
    -- },
    {
        'ibhagwan/fzf-lua',
        event = 'VeryLazy',
        dependencies = {
            'echasnovski/mini.icons',
            { 'junegunn/fzf', build = './install --bin' },
        },
        config = function()
            require('custom.fzf-lua')
        end,
    },
    -- {
    --     'nvim-telescope/telescope.nvim',
    --     enabled = false,
    --     dependencies = {
    --         'nvim-lua/plenary.nvim',
    --         { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    --         'BurntSushi/ripgrep',
    --         'sharkdp/fd',
    --         'nvim-treesitter/nvim-treesitter',
    --     },
    --     config = function()
    --         require('custom.telescope')
    --     end,
    -- },
    {
        -- Something like harpoon, but better method imo
        'otavioschwanck/arrow.nvim',
        event = 'BufRead',
        keys = {
            { '<leader>aa', '<cmd>ArrowToggle<cr>', desc = 'Toggle Arrow' },
            { '<leader>an', '<cmd>ArrowNext<cr>', desc = 'Go to next Arrow' },
            { '<leader>ap', '<cmd>ArrowPrev<cr>', desc = 'Go to previous Arrow' },
        },
        dependencies = {
            -- { 'nvim-tree/nvim-web-devicons' },
            -- or if using `mini.icons`
            { 'echasnovski/mini.icons' },
        },
        config = function()
            require('custom.arrow')
        end,
    },

    {
        'ggandor/leap.nvim',
        event = 'BufRead',
        keys = {
            { 's', '<Plug>(leap)', mode = { 'n', 'x' } },
            { 'S', '<Plug>(leap-from-window)', mode = { 'n', 'x' } },
            { 's', '<Plug>(leap-forward)', mode = 'o' },
            { 'S', '<Plug>(leap-backward)', mode = 'o' },
        },
        dependencies = {
            'ggandor/flit.nvim',
            'tpope/vim-repeat',
        },
        config = function()
            require('custom.leap')
        end,
    },
    {

        'ggandor/flit.nvim',
        event = 'BufRead',
        config = function()
            require('custom.flit')
        end,
    },
}
