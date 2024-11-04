require('noice').setup({
    lsp = {
        signature = { enabled = false },
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
    },
})
vim.api.nvim_create_autocmd('RecordingEnter', {
    callback = function()
        local msg = string.format('Register:  %s', vim.fn.reg_recording())
        _MACRO_RECORDING_STATUS = true
        vim.notify(msg, vim.log.levels.INFO, {
            title = 'Macro Recording',
            keep = function()
                return _MACRO_RECORDING_STATUS
            end,
        })
    end,
    group = vim.api.nvim_create_augroup('NoiceMacroNotfication', { clear = true }),
})

vim.api.nvim_create_autocmd('RecordingLeave', {
    callback = function()
        _MACRO_RECORDING_STATUS = false
        vim.notify('Success!', vim.log.levels.INFO, {
            title = 'Macro Recording End',
            timeout = 2000,
        })
    end,
    group = vim.api.nvim_create_augroup('NoiceMacroNotficationDismiss', { clear = true }),
})
larp.fn.map('n', '<leader>nd', '<cmd>NoiceDismiss<cr>', { desc = 'Dismiss Notification' })
