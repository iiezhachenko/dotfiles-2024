vim.g.mapleader = " "
-- vim.keymap.set({'i', 'v'}, 'jk', '<ESC>', { noremap = true })
-- Set Ctrl+s to save
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {
  desc = "Open built-in file explorer",
  noremap = true,
})

-- ToggleTerm Mappings
vim.keymap.set('n', '<Leader>tf', ':ToggleTerm direction=float<CR>', {
  desc = "Open floating terminal",
  noremap = true,
})
vim.keymap.set('n', '<Leader>th', ':ToggleTerm direction=horizontal<CR>', {
  desc = "Open floating terminal",
  noremap = true,
})
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {
  desc = "Exit terminal mode with ESC",
  noremap = true,
  silent = true
})
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-W>k]], {
  desc = "Move out of the terminal",
  noremap = true,
})

-- Insert mode navigation
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
