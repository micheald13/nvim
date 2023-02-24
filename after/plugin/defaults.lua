local api = vim.api
local g = vim.g
local opt = vim.opt

-- Remap leader and local leader to <Space>
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = " "
g.maplocalleader = " "
-- Set highlight on search
opt.hlsearch = false

-- Access system clipboard
opt.clipboard = "unnamedplus"

-- Make line numbers default
vim.wo.number = true

opt.relativenumber = true

-- Enable mouse mode
opt.mouse = 'a'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Decrease update time
opt.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
opt.termguicolors = true
vim.cmd [[colorscheme onedark]]

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- Time in milliseconds to wait for a mapped sequence to complete.
opt.timeoutlen = 300
-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = ' '
