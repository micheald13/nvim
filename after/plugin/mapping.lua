local map = vim.keymap.set
local default_options = { silent = true }
local expr_options = { expr = true, silent = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', default_options)

-- Center search results
map("n", "n", "nzz", default_options)
map("n", "N", "Nzz", default_options)

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", expr_options)
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", expr_options)

-- Tab switch buffer
map("n", "<tab>", ":bnext<CR>", default_options)
map("n", "<S-tab>", ":bprev<CR>", default_options)

-- Make current file executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", default_options)

-- Quickly call tmux-sessionizer
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Cancel search highlighting with ESC
map("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_options)

-- Paste over currently selected text without yanking it
map("v", "p", '"_dP', default_options)

-- Keymaps for copying to system clipboard
map('n', '<leader>c', require('osc52').copy_operator, {expr = true})
map('n', '<leader>cc', '<leader>c_', {remap = true})
map('x', '<leader>c', require('osc52').copy_visual)
--
-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", default_options)
map("x", "J", ":move '>+1<CR>gv-gv", default_options)

-- undo tree
map('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Lazygit
map('n', '<leader>gg', "<cmd>:LazyGit<CR>", default_options)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
