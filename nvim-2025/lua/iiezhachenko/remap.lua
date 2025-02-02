vim.g.mapleader = " "
-- vim.keymap.set({'i', 'v'}, 'jk', '<ESC>', { noremap = true })
-- Set Ctrl+s to save
vim.keymap.set( "n","<C-s>", ":w<CR>", {})
vim.keymap.set( "i","<C-s>", "<ESC>:w<CR>", {})
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {
  desc = "Open built-in file explorer",
  noremap = true,
})
vim.keymap.set('n', '<C-q>', ':q<CR>', {
  desc = "Quit",
  noremap = true,
})
-- vim.keymap.set('n', ';', ':', {
--   desc = "Open command line",
--   noremap = true,
-- })
-- Insert mode navigation
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
-- Adding delays to inefficient vim motions that I tend to abuse
vim.keymap.set('n', 'j', "j:lua vim.cmd('sleep 500m')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', 'k', "k:lua vim.cmd('sleep 500m')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', 'e', "e:lua vim.cmd('sleep 500m')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', 'w', "w:lua vim.cmd('sleep 500m')<CR>", { noremap = true, silent = true })
vim.keymap.set('n', 'b', "b:lua vim.cmd('sleep 500m')<CR>", { noremap = true, silent = true })
