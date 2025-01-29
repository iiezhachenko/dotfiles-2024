return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  -- opts = {
  -- }
  config = function()
    local wk = require("which-key")
    wk.add({
      { '<leader>f', group = 'Telescope' },
      { '<leader>ff', ':Telescope find_files<CR>', desc = 'Find files' },
      { '<leader>fg', ':Telescope live_grep<CR>', desc = 'Grep files' },
      { '<leader>fs', ':Telescope grep_string<CR>', desc = 'Search for string' },
      { '<leader>fb', ':Telescope buffers<CR>', desc = 'List buffers' },
    })
  end
}
