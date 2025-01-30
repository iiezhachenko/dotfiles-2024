vim.api.nvim_create_augroup( "zen_mode", { clear = true } )
vim.api.nvim_create_autocmd( { 'BufEnter' }, {
  group = 'zen_mode',
  pattern = {'*.md'},
  callback = function ()
    vim.opt_local.wrapmargin = 50
    vim.opt_local.textwidth = 80
    vim.opt_local.formatoptions = { 'a', 't' }
    vim.opt_local.linebreak = true
    vim.opt_local.wrap = true
    vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true, buffer = true })
    vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true, buffer = true })
    require('zen-mode').open()
  end
})
