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

--  REMAPING J AND K  --
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('x', 'j', 'gj')
vim.keymap.set('x', 'k', 'gk')

--  LINE MANAGEMENT  --
vim.keymap.set("n", "J", "mzJ`z")   -- Adds below line to end of current line separated by a space (retains cursor position)

vim.keymap.set('n', '<M-,>', 'o<Esc>')	-- Add empty line below
vim.keymap.set('n', '<M-.>', 'O<Esc>')	-- Add empty line above

vim.keymap.set('n', '<leader><Up>', 'VyP')	-- Duplicate line up
vim.keymap.set('n', '<leader><Down>', 'Vyp')	-- Duplicate line down
vim.keymap.set('v', '<leader><Up>', 'yP')	-- Duplicate selection up
vim.keymap.set('v', '<leader><Down>', 'mmy`mp')	-- Duplicate selection up

vim.keymap.set("n", ")", "V:m '>+1<CR>gv=gv<Esc>")  -- Moves line down
vim.keymap.set("n", "(", "V:m '<-2<CR>gv=gv<Esc>")  -- Moves line up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Moves selection down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Moves selection up

vim.keymap.set("n", "_", "-");
vim.keymap.set("n", "-", "_");

--  SCROLLING  --
vim.keymap.set('n', '<M-->', '5<C-y>')	-- Scroll up
vim.keymap.set('n', '<M-=>', '5<C-e>')	-- Scroll down

--  FORMATTING  --
vim.keymap.set('n', '<leader>d', 'dbs')		-- Delete previous word (including the current character)
vim.keymap.set('n', '<leader>f', '=ip') 	-- Formats current paragraph
vim.keymap.set('n', '<leader>F', 'mtggVG=`tzz')	-- Formats entire document (and retains the current cursor position)
vim.keymap.set('n', '<leader>cc', '_f;lD')    -- Deletes comment at the end of the line
vim.api.nvim_set_keymap('i', '<C-i>', '<C-w>', {noremap = true})

--  UTILITIES  --
vim.api.nvim_set_keymap('n', '<C-B>', '<C-A>', { noremap = true })	-- Increment
-- vim.api.nvim_set_keymap('n', '<S-v>', '=p', { noremap = true, silent = true })   -- Paste from clipboard onto a new line

--  SEARCHING  --
vim.keymap.set("n", "<leader>w", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])    -- Replaces current word over entire file

--  FILES  --
vim.api.nvim_set_keymap('n', '<F5>', ':let @+=expand(\'%:p\')<CR>', {noremap = true, silent = true})    -- Copy file path to clipboard

--  MISC  --
-- vim.api.nvim_set_keymap('n', '<C-e>', '<C-w>', {noremap = true})	-- Switch between buffers with control + e
vim.keymap.set('n', '<leader>dc', 'F/lld0i<backspace><leader><Esc>$')     -- Combines comments onto previous line

--  RUST  --
vim.keymap.set('n', '<leader>rp', 'VdOprintln!("{}", );<Esc>hi')
vim.keymap.set('n', '<leader>rf', 'VdOprintln!("{:?}", );<Esc>hi')

--  JS  --
vim.keymap.set('n', '<leader>jp', 'Sconsole.log();<Esc>hi')  -- Adds console.log() with cursor in between the brackets
vim.keymap.set('n', '<leader>jt', 'SsetTimeout(() => {}, 1000);<Esc>8hi<Enter><Enter><Esc>kS')  -- Adds a setTimeout() for 1 second with cursor in between the brackets

