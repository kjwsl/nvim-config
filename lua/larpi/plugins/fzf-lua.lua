return {
    'ibhagwan/fzf-lua',
    event = 'VeryLazy',
    dependencies = { 'nvim-mini/mini.icons' },
    opts = {
        winopts = {
            preview = {
                border = vim.g.winborder,
                wrap = true,
                hidden = false,
            },
        },
    },
    config = function(_, opts)
        local fzf_lua = require('fzf-lua')
        fzf_lua.setup(opts)

        local success = fzf_lua.register_ui_select()
        if not success then
            vim.notify('fzf-lua: Failed to register ui-select', vim.log.levels.WARN)
        end
    end,
    keys = {
        {
            '<C-x><C-f>',
            function()
                FzfLua.complete_path()
            end,
            mode = { 'n', 'x', 'i' },
            desc = '[FzfLua] Path Completion',
        },
        {
            '<Leader>fp',
            function()
                require('fzf-lua').builtin()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Pick',
        },
        {
            '<Leader>ff',
            function()
                require('fzf-lua').files()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Files',
        },
        {
            '<Leader>fc',
            function()
                require('fzf-lua').files({ cwd = vim.fn.stdpath('config') })
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Neovim Files',
        },
        {
            '<Leader>f.',
            function()
                require('fzf-lua').resume()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Resume',
        },
        {
            '<Leader>fF',
            function()
                require('fzf-lua').global()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Global Search',
        },
        {
            '<Leader>fb',
            function()
                require('fzf-lua').buffers()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Buffers',
        },
        {
            '<Leader>fr',
            function()
                require('fzf-lua').oldfiles()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Recent',
        },
        {
            '<Leader>fH',
            function()
                require('fzf-lua').history()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] History',
        },
        {
            '<Leader>fs',
            function()
                require('fzf-lua').lsp_document_symbols()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] LSP Document Symbols',
        },
        {
            '<Leader>fS',
            function()
                require('fzf-lua').lsp_workspace_symbols()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] LSP Workspace Symbols',
        },
        {
            '<Leader>sb',
            function()
                require('fzf-lua').blines()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Current Buffer Lines',
        },
        {
            '<Leader>sB',
            function()
                require('fzf-lua').lines()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Buffers Lines',
        },
        {
            '<Leader>st',
            function()
                require('fzf-lua').treesitter()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Treesitter',
        },
        {
            '<Leader>fT',
            function()
                require('fzf-lua').tabs()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Tabs',
        },
        {
            '<Leader>fv',
            function()
                require('fzf-lua').vcs_files()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] VCS Files (Git/Jujutsu)',
        },
        {
            '<Leader>fh',
            function()
                require('fzf-lua').helptags()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Help',
        },
        {
            '<Leader>fm',
            function()
                require('fzf-lua').manpages()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Man Pages',
        },
        {
            '<Leader>fxc',
            function()
                require('fzf-lua').commands()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Commands',
        },
        {
            '<Leader>f:',
            function()
                require('fzf-lua').command_history()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Command History',
        },
        {
            '<Leader>f"',
            function()
                require('fzf-lua').registers()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Registers',
        },
        {
            '<Leader>fC',
            function()
                require('fzf-lua').changes()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Changes',
        },
        {
            '<Leader>fu',
            function()
                require('fzf-lua').undotree()
            end,
            desc = '[FzfLua] Undotree',
            mode = { 'n', 'x' },
        },
        {
            '<Leader>fk',
            function()
                require('fzf-lua').keymaps()
            end,
            desc = '[FzfLua] Keymaps',
            mode = { 'n', 'x' },
        },
        {
            '<Leader>fJ',
            function()
                require('fzf-lua').jumps()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Jumps',
        },
        {
            '<Leader>fa',
            function()
                require('fzf-lua').autocmds()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Autocmds',
        },
        {
            '<Leader>fxt',
            function()
                require('fzf-lua').tmux_buffers()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Tmux Buffers',
        },
        {
            '<Leader>fz',
            function()
                require('fzf-lua').zoxide()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Zoxide',
        },

        -- Grep
        {
            '<Leader>sg',
            function()
                require('fzf-lua').live_grep()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Grep',
        },
        {
            '<Leader>sc',
            function()
                require('fzf-lua').live_grep({ cwd = vim.fn.stdpath('config') })
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Grep Neovim',
        },
        {
            '<Leader>sw',
            function()
                require('fzf-lua').grep_cword()
            end,
            desc = '[FzfLua] Grep Word',
        },
        {
            '<Leader>sW',
            function()
                require('fzf-lua').grep_cWORD()
            end,
            desc = '[FzfLua] Grep WORD',
        },
        {
            '<Leader>sw',
            function()
                require('fzf-lua').grep_visual()
            end,
            mode = { 'x', 'x' },
            desc = '[FzfLua] Grep Selection',
        },
        {
            '<Leader>sl',
            function()
                require('fzf-lua').grep_loclist()
            end,
            desc = '[FzfLua] Grep Loclist',
        },

        -- LSP
        {
            'grr',
            function()
                require('fzf-lua').lsp_references()
            end,
            desc = '[FzfLua] LSP References',
        },
        {
            'gd',
            function()
                require('fzf-lua').lsp_definitions()
            end,
            desc = '[FzfLua] LSP Definitions',
        },
        {
            'gD',
            function()
                require('fzf-lua').lsp_declarations()
            end,
            desc = '[FzfLua] LSP Declarations',
        },
        {
            'grt',
            function()
                require('fzf-lua').lsp_typedefs()
            end,
            desc = '[FzfLua] LSP Type Definitions',
        },
        {
            'gri',
            function()
                require('fzf-lua').lsp_implementations()
            end,
            desc = '[FzfLua] LSP Implementations',
        },
        {
            'grci',
            function()
                require('fzf-lua').lsp_incoming_calls()
            end,
            desc = '[FzfLua] LSP Incoming Calls',
        },
        {
            'grco',
            function()
                require('fzf-lua').lsp_outgoing_calls()
            end,
            desc = '[FzfLua] LSP Outcoming Calls',
        },
        {
            'gra',
            function()
                require('fzf-lua').lsp_code_actions()
            end,
            desc = '[FzfLua] LSP Code Actions',
        },
        {
            '<Leader>fd',
            function()
                require('fzf-lua').diagnostics_workspace()
            end,
            desc = '[FzfLua] Diagnostics Workspace',
        },
        {
            '<Leader>fD',
            function()
                require('fzf-lua').diagnostics_document()
            end,
            desc = '[FzfLua] Diagnostics Document',
        },
        -- Jujutsu
        {
            '<Leader>fj',
            function()
                require('fzf-lua').jj_files()
            end,
            desc = '[FzfLua] Jujutsu Files',
        },
        -- Git
        {
            '<Leader>gs',
            function()
                require('fzf-lua').git_status()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Git Status',
        },
        {
            '<Leader>gb',
            function()
                require('fzf-lua').git_blame()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Git Blame',
        },
        {
            '<Leader>gr',
            function()
                require('fzf-lua').git_reflog()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Git Reflog',
        },

        {
            '<Leader>gc',
            function()
                require('fzf-lua').git_commits()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Git Commits',
        },
        {
            '<Leader>gC',
            function()
                require('fzf-lua').git_bcommits()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Git Buffer Commits',
        },
        {
            '<Leader>gd',
            function()
                require('fzf-lua').git_diff()
            end,
            mode = { 'n', 'x' },
            desc = '[FzfLua] Git Diff',
        },
    },
}
