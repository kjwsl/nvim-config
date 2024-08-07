require("opts")
require("keymaps")
require("plugins")
require("autocmds")

-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        {import = "plugins"},
        {import = "plugins.editing"},
        {import = "plugins.ui"},
        {import = "plugins.ui.colorschemes"},
        {import = "plugins.git"},
        {import = "plugins.lsp"},
        {import = "plugins.utils"},
        {import = "plugins.integrations"},
    }
})
