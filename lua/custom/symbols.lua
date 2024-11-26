local r = require('symbols.recipes')
require('symbols').setup(r.DefaultFilters, r.AsciiSymbols, {
    -- custom settings here
    -- e.g. hide_cursor = false
})
vim.keymap.set('n', ',s', '<cmd> Symbols<CR>')
vim.keymap.set('n', ',S', '<cmd> SymbolsClose<CR>')
vim.keymap.set('n', 'ts', '<cmd> SymbolsToggle<CR>')
