--  INIT  --
vim.g.mapleader = " "

--  BASICS  --
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)	-- Netrw
vim.keymap.set('x', '<leader>pv', vim.cmd.Ex)	-- Netrw
vim.api.nvim_set_keymap('n', '<leader>v', ':NvimTreeToggle<CR>', {noremap = true, silent = true})  -- Nvim Tree
vim.api.nvim_set_keymap('x', '<leader>v', ':NvimTreeToggle<CR>', {noremap = true, silent = true})  -- Nvim Tree

vim.keymap.set('n', '<leader>a', 'ggVG')	-- Select all
vim.keymap.set('x', '<leader>y', '"+y')		-- Copy to clipboard
vim.keymap.set('x', '<leader>x', '"+d')		-- Cut to clipboard

vim.keymap.set('x', '<leader>p', '"_dP')    -- Pastes over while retaining current register

vim.api.nvim_set_keymap('n', '<leader>r', ':PackerSync<CR>', {noremap = true})	-- Packer Sync

--  LINE MANAGEMENT  --
vim.keymap.set("n", "J", "mzJ`z")   -- Adds below line to end of current line separated by a space (retains cursor position)

vim.keymap.set('n', '{', 'O<Esc>')	-- Add empty line above
vim.keymap.set('n', '}', 'o<Esc>')	-- Add empty line below

vim.keymap.set('n', '<leader><Down>', 'Vyp')	-- Duplicate line down
vim.keymap.set('n', '<leader><Up>', 'VyP')	-- Duplicate line up

-- vim.keymap.set('n', 'K', 'ddkP')    -- Switches line with above line
-- vim.keymap.set('n', 'J', 'ddp')    -- Switches line with below line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Moves line up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Moves line down

--  FORMATTING  --
vim.keymap.set('n', '<leader>d', 'dbs')		-- Delete previous word (including the current character)
vim.keymap.set('n', '<leader>f', 'mtggVG=`tzz')	-- Formats entire document (and retains the current cursor position)
vim.keymap.set('n', '<leader>cc', 'f;lD')    -- Deletes comment at the end of the line

--  SEARCHING  --
vim.keymap.set("n", "<leader>w", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])    -- Replaces current word over entire file

--  SPECIFIC TO FILETYPES  --
vim.api.nvim_set_keymap('n', '<F5>', ':let @+=expand(\'%:p\')<CR>', {noremap = true, silent = true})    -- Copy file path to clipboard

--  MISC  --
vim.api.nvim_set_keymap('n', '<C-e>', '<C-w>', {noremap = true})	-- Switch between buffers with control + e

vim.api.nvim_set_keymap('n', '<leader>e', ':lua require"nvim-tree".find_file(true)<CR>', { noremap = true, silent = true })

-- Remap <leader>e to open nvim-tree
-- vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

