return {
    {
        'CopilotC-Nvim/CopilotChat.nvim',
        cmd = {
            'CopilotChat',
            'CopilotChatOpen',
            'CopilotChatClose',
            'CopilotChatAgents',
            'CopilotChatCommit',
            'CopilotChatCommitStaged',
            'CopilotChatDebugInfo',
            'CopilotChatDocs',
            'CopilotChatExplain',
            'CopilotChatFix',
            'CopilotChatFixDiagnostic',
            'CopilotChatLoad',
            'CopilotChatModels',
            'CopilotChatOptimize',
            'CopilotChatReset',
            'CopilotChatReview',
            'CopilotChatSave',
            'CopilotChatStop',
            'CopilotChatTests',
            'CopilotChatToggle',
        },
        dependencies = {
            { 'zbirenbaum/copilot.lua' },
            { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
        },
        build = 'make tiktoken', -- Only on MacOS or Linux
        opts = {
            model = 'claude-sonnet-4',
        },
        -- See Commands section for default commands if you want to lazy load on them
    },
    -- {
    --     'github/copilot.vim',
    --     event = 'InsertEnter'
    -- },
    {
        'zbirenbaum/copilot.lua',
        event = 'InsertEnter',
        cmd = 'Copilot',
        config = function()
            require('custom.copilot-lua')
        end,
    },
    {
        'yetone/avante.nvim',
        event = 'VeryLazy',
        version = false, -- Never set this value to "*"! Never!
        opts = {
            -- add any opts here
            provider = 'claude',
            providers = {
                openai = {
                    endpoint = 'https://api.anthropic.com',
                    model = 'claude-4-sonnet-20240513', -- your desired model (or use gpt-4o, etc.)
                    timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
                    extra_request_body = {
                        max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
                        temperature = 0,
                    }
                },
            }
        },
        -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
        build = 'make',
        -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'stevearc/dressing.nvim',
            'nvim-lua/plenary.nvim',
            'MunifTanjim/nui.nvim',
            --- The below dependencies are optional,
            'echasnovski/mini.pick', -- for file_selector provider mini.pick
            'nvim-telescope/telescope.nvim', -- for file_selector provider telescope
            'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
            'ibhagwan/fzf-lua', -- for file_selector provider fzf
            'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
            'zbirenbaum/copilot.lua', -- for providers='copilot'
            {
                -- support for image pasting
                'HakonHarnes/img-clip.nvim',
                event = 'VeryLazy',
                opts = {
                    -- recommended settings
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                        -- required for Windows users
                        use_absolute_path = true,
                    },
                },
            },
            {
                -- Make sure to set this up properly if you have lazy=true
                'MeanderingProgrammer/render-markdown.nvim',
                opts = {
                    file_types = { 'markdown', 'Avante' },
                },
                ft = { 'markdown', 'Avante' },
            },
        },
    },
}
