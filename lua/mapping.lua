local map = vim.keymap.set
local default_options = { silent = true }
local expr_options = { expr = true, silent = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', default_options)

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", expr_options)
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", expr_options)

-- Tab switch buffer
map("n", "<tab>", ":bnext<CR>", default_options)
map("n", "<S-tab>", ":bprev<CR>", default_options)

map("n", "<leader>x", "<cmd>!chmod +x %<CR>", default_options)

map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

