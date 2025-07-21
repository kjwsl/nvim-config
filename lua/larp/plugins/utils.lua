return {
    {
        -- Sudo write/read
        'lambdalisue/vim-suda',
        keys = {
            { '<leader><leader>Sw', '<cmd>SudaWrite<cr>', mode = 'n', desc = 'Sudo Write' },
            { '<leader><leader>Sr', '<cmd>SudaRead<cr>',  mode = 'n', desc = 'Sudo Read' },
        },
        cmd = { 'SudaWrite', 'SudaRead' },
        config = function()
            vim.g.suda_smart_edit = 1
        end,
    },
    {
        'MagicDuck/grug-far.nvim',
        config = function()
            require('grug-far').setup({
                -- options, see Configuration section below
                -- there are no required options atm
                -- engine = 'ripgrep' is default, but 'astgrep' can be specified
            })
        end,
    },

    -- Snapshop code
    -- {
    --     'mistricky/codesnap.nvim',
    --     build = 'make build_generator',
    --     keys = {
    --         { '<leader>xcc', '<cmd>CodeSnap<cr>', mode = 'x', desc = 'Save selected code snapshot into clipboard' },
    --         { '<leader>xcs', '<cmd>CodeSnapSave<cr>', mode = 'x', desc = 'Save selected code snapshot in ~/Pictures' },
    --     },
    --     opts = {
    --         save_path = '~/Pictures',
    --         has_breadcrumbs = true,
    --         bg_theme = 'bamboo',
    --     },
    -- },

    -- {
    --     'mrjones2014/legendary.nvim',
    --     -- since legendary.nvim handles all your keymaps/commands,
    --     -- its recommended to load legendary.nvim before other plugins
    --     priority = 10000,
    --     lazy = false,
    --     -- sqlite is only needed if you want to use frecency sorting
    --     dependencies = { 'kkharji/sqlite.lua' },
    --     keys = {
    --         { '<leader>fK', '<cmd>Legendary<cr>', desc = 'Open Legendary' },
    --     },
    --     opts = {
    --         extensions = {
    --             lazy_nvim = true,
    --             smart_splits = {},
    --         },
    --     },
    -- },
    {
        -- Preview the definition of the word under the cursor
        'rmagatti/goto-preview',
        event = 'BufRead',
        opts = {
            default_mappings = true,
        },
    },
    {
        -- AutoSession takes advantage of Neovim's existing session management capabilities
        -- to provide seamless automatic session management.
        'rmagatti/auto-session',
        lazy = false,

        ---enables autocomplete for opts
        ---@module "auto-session"
        ---@type AutoSession.Config
        opts = {
            suppressed_dirs = { '~/', '~/Downloads', '/' },
            -- log_level = 'debug',
        },
    },
    {
        'stevearc/quicker.nvim',
        ft = 'qf',
        config = function()
            require('custom.quicker')
        end,
    },
    {
        'NMAC427/guess-indent.nvim',
        opts = {},
    },
    {
        'kevinhwang91/nvim-bqf',
        ft = 'qf',
        dependencies = {
            {
                'junegunn/fzf',
                run = function()
                    vim.fn['fzf#install']()
                end,
            },
            { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
        },
    },
    {
        'meznaric/key-analyzer.nvim',
        opts = {},
    },
    {
        'folke/snacks.nvim',
        priority = 1000,
        lazy = false,
        config = function()
            require('custom.snacks')
        end,
    },
    {
        'atiladefreitas/dooing',
        keys = {
            { '<leader>td', mode = 'n' },
        },
        cmd = 'Dooing',
        config = function()
            require('dooing').setup({
                -- your custom config here (optional)
            })
        end,
    },
    {
        'RaafatTurki/hex.nvim',
        event = 'BufRead',
        opts = {},
    },
    {
        'ZWindL/orphans.nvim',
        opts = {},
    },
    {
        'rachartier/tiny-code-action.nvim',
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            { 'ibhagwan/fzf-lua' },
        },
        event = 'LspAttach',
        keys = {
            {
                '<leader>cA',
                function()
                    require('tiny-code-action').code_action()
                end,
                mode = { 'n', 'v' },
                desc = 'Code Action',
            },
        },
        opts = {},
    },
    {
        -- Color picker utils
        'uga-rosa/ccc.nvim',
        cmd = {
            'CccConvert',
            'CccPick',
            'CccHighlighterDisable',
            'CccHighlighterEnable',
            'CccHighlighterToggle',
        },
        config = function()
            require('custom.ccc')
        end,
    },
    {
        "alex-popov-tech/store.nvim",
        dependencies = {
            "OXY2DEV/markview.nvim", -- optional, for pretty readme preview / help window
        },
        cmd = "Store",
        keys = {
            { "<leader>ps", "<cmd>Store<cr>", desc = "Open Plugin Store" },
        },
        opts = {
            -- optional configuration here
        },
    }
}
