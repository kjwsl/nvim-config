return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'rcarriga/nvim-dap-ui',
        'nvim-neotest/nvim-nio',
        'theHamsta/nvim-dap-virtual-text',
        {
            'igorlfs/nvim-dap-view',
            ---@module 'dap-view'
            ---@type dapview.Config
            opts = {},
        },
        {
            'jay-babu/mason-nvim-dap.nvim',
            dependencies = {
                'mason-org/mason.nvim',
            },
            opts = {
                ensure_installed = {
                    'codelldb',
                    'python',
                    'bash',
                },
                handlers = {
                    function(config)
                        require('mason-nvim-dap').default_setup(config)
                    end,
                },
            },
        },
    },
    cmd = { 'DapToggleBreakpoint', 'DapContinue', 'DapStepInto', 'DapStepOver', 'DapTerminate' },
    keys = {
        {
            '<Leader>db',
            function()
                require('dap').toggle_breakpoint()
            end,
            desc = '[DAP] Toggle Breakpoint',
        },
        {
            '<Leader>dc',
            function()
                require('dap').continue()
            end,
            desc = '[DAP] Continue',
        },
        {
            '<Leader>di',
            function()
                require('dap').step_into()
            end,
            desc = '[DAP] Step Into',
        },
        {
            '<Leader>do',
            function()
                require('dap').step_over()
            end,
            desc = '[DAP] Step Over',
        },
        {
            '<Leader>dt',
            function()
                require('dap').terminate()
            end,
            desc = '[DAP] Terminate',
        },
        {
            '<Leader>du',
            function()
                require('dapui').toggle()
            end,
            desc = '[DAP] Toggle UI',
        },
    },
    config = function()
        local dap = require('dap')
        local dapui = require('dapui')

        dapui.setup()
        require('nvim-dap-virtual-text').setup()

        -- Automatically open/close UI
        dap.listeners.after.event_initialized['dapui_config'] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated['dapui_config'] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited['dapui_config'] = function()
            dapui.close()
        end

        -- Manual configuration for Rust/C/C++
        local rust_config = {
            {
                name = 'Launch',
                type = 'codelldb',
                request = 'launch',
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
            },
        }
        dap.configurations.rust = rust_config
        dap.configurations.cpp = rust_config
        dap.configurations.c = rust_config
    end,
}
