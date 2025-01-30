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
      -- Telescope Key Mappings
      { '<leader>f', group = 'Telescope' },
      { '<leader>ff', ':Telescope find_files<CR>', desc = 'Find files' },
      { '<leader>fg', ':Telescope live_grep<CR>', desc = 'Grep files' },
      { '<leader>fs', ':Telescope grep_string<CR>', desc = 'Search for string' },
      { '<leader>fb', ':Telescope buffers<CR>', desc = 'List buffers' },

      -- Ufo Key Mappings
      { 'K',
        function()
          local winid = require('ufo').peekFoldedLinesUnderCursor()
          if not winid then
              vim.lsp.buf.hover()
          end
        end,
        desc = 'Ufo Peek or LSP Hover',
      },

      -- ToggleTerm Mappings
      { '<leader>t', group = 'ToggleTerm' },
      { '<leader>tf', ':ToggleTerm direction=float<CR>', desc = 'Floating terminal' },
      { '<leader>th', ':ToggleTerm direction=horizontal<CR>', desc = 'Horizontal terminal' },
      { '<esc>', [[<C-\><C-n>]], desc = 'Exit terminal mode with ESC', mode = 't' },
      { '<C-k>', [[<C-\><C-n><C-W>k]], desc = 'Move out of the terminal', mode = 't' }
    })
  end
}
