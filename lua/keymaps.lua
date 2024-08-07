local function map(mode, lhs, rhs, opts)
  local default_opts = { silent = true, noremap = false }

  if opts ~= nil then
    for k, v in pairs(opts) do
      default_opts[k] = v
    end
  end

  vim.keymap.set(mode, lhs, rhs, default_opts)
end

-- Windows
-- map("", "<C-h>", "<C-w>h", { desc = "Move to Left Window" })
-- map("", "<C-j>", "<C-w>j", { desc = "Move to Down Window" })
-- map("", "<C-k>", "<C-w>k", { desc = "Move to Up Window" })
-- map("", "<C-l>", "<C-w>l", { desc = "Move to Right Window" })
map('', '<leader>wc', '<C-w>c', { desc = 'Close Window' })
map('', '<leader>wm', '<C-w>o', { desc = 'Maximize Window' })
map('', '<leader>sh', ':vsplit<CR>', { desc = 'Split Window to the Left' })
map('', '<leader>sj', '<cmd>split<cr><C-w>j', { desc = 'Split Window to the Bottom' })
map('', '<leader>sk', ':split<CR>', { desc = 'Split Window to the Top' })
map('', '<leader>sl', ':vsplit<CR><C-w>l', { desc = 'Split Window to the Right' })
map('', '<leader>w+', '<c-w>+', { desc = 'Increase Window Height' })
map('', '<leader>w-', '<c-w>-', { desc = 'Decrease Window Height' })
map('', '<leader>w>', '<c-w>>', { desc = 'Increase Window Width' })
map('', '<leader>w<', '<c-w><', { desc = 'Decrease Window Width' })

-- General
map('', '<leader>qq', '<cmd>confirm qa<cr>', { desc = 'Exit NeoVim' })
map('', '<leader>oc', '<cmd>e ~/.config/nvim<cr>', { desc = 'Open Neovim Config' })
map('', '<leader>wb', '<cmd>w<cr>', { desc = 'Write to Buffer' })
map('', '<leader>wa', '<cmd>wa<cr>', { desc = 'Write All' })
map('', '<leader>wq', '<cmd>wq<cr>', { desc = 'Write and Quit' })
map('', '<leader>so', '<cmd>so<cr>', { desc = 'Source Current Buffer' })
map('n', '<C-p>', '<cmd>bp<cr>', { desc = 'Navigate to Previous Buffer' })
map('n', '<C-n>', '<cmd>bn<cr>', { desc = 'Navigate to Next Buffer' })
-- TODO: Fix this
-- map('n', '<leader>ot', '<leader>sj<jmd>term<cr>', { desc = 'Open Terminal', remap = true })

-- Editing
map('', '<leader>y', '"+y', { desc = 'Yank to Clipboard' })
map('i', '<C-C>', '<ESC>')
map('n', '==', 'gg=G<C-o>', { desc = 'Indent Buffer', noremap = false })

map('v', 'J', function()
  return ":m '>" .. (vim.v.count > 1 and vim.v.count or 1) .. '<CR>gv=gv'
end, { expr = true, desc = 'Move Selected Line Down' })

map('v', 'K', function()
  return ":m '<" .. (vim.v.count > 1 and -vim.v.count - 1 or -2) .. '<CR>gv=gv'
end, { expr = true, desc = 'Move Selected Line Up' })

-- File
map('n', '<leader>bw', '<cmd>w<cr>', { desc = '[B]uffer [W]rite' })
map('i', 'jk', '<Esc>')

-- LSP
map('n', '<leader>cR', ':%s/\\<<C-r><C-w>\\>//g<left><left>', { desc = 'Rename All Occurrences' })
