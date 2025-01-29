-- Disable GUI cursor
-- vim.opt.guicursor = ""

-- Enable line numbers
vim.opt.nu = true
-- Enable relative numbers
vim.opt.relativenumber = true

-- A tab character is displayed as four spaces
vim.opt.tabstop = 2
-- Pressing Tab inserts four spaces in insert mode
vim.opt.softtabstop = 2
-- Indentation commands shift by four spaces
vim.opt.shiftwidth = 2
-- Use spaces instead of tabs for indentation
vim.opt.expandtab = true

-- Enable smart intendation
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false
-- Disable swap files for open buffers
vim.opt.swapfile = false
-- Disable backup files creation on save
vim.opt.backup = false
-- Enable saving unto history to the file system
-- Allows to undo changes even after closing and reopening a file
vim.opt.undofile = true
-- Set directory for undo files to ~/.nvim/undodir
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

-- Disable search results highlighting
vim.opt.hlsearch = false
-- Enable incremental search
vim.opt.incsearch = true

-- Enable true color support
vim.opt.termguicolors = true

-- How many lines to keep above and below the cursor when scrolling
vim.opt.scrolloff = 8
-- Display the sign column
vim.opt.signcolumn = "yes"
-- Allow for additional characters (specifically @ and -) in file names
-- when using commands like gf (go to file)
-- or when working with file paths in general.
vim.opt.isfname:append("@-@")

-- How often Neovim updates certain actions,
-- such as showing the status of the cursor or triggering events like CursorHold
vim.opt.updatetime = 50

-- Set a vertical line at a specified column number
vim.opt.colorcolumn = "80"

-- Use the + register (system clipboard) automatically whenever you yank text
vim.opt.clipboard = 'unnamedplus'
