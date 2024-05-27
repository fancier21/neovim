M = {}
local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Tree
-- keymap("n", "<C-a>", ":Neotree toggle<CR>", opts)
-- Tree
keymap("n", "<C-a>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<C-f>", ":NvimTreeFindFile<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- ChatGPT
vim.keymap.set('n', '<Leader>tk', '<cmd>:ChatGPT<cr>', opts)
vim.keymap.set('n', '<Leader>tj', '<cmd>:ChatGPTActAs<cr>', opts)
vim.keymap.set('n', '<Leader>tt', '<cmd>:ChatGPTEditWithInstructions<cr>', opts)

-- LSP
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- RestClient
-- Map <leader>r to run the request under the cursor
vim.api.nvim_set_keymap('n', '<leader>r', '<Plug>RestNvim', opts)
-- Map <leader>p to preview the request cURL command
vim.api.nvim_set_keymap('n', '<leader>p', '<Plug>RestNvimPreview', opts)
-- Map <leader>l to re-run the last request
vim.api.nvim_set_keymap('n', '<leader>l', '<Plug>RestNvimLast', opts)

return M
