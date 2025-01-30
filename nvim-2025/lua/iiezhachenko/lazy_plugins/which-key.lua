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
      { '<C-x>', [[<C-\><C-n>]], desc = 'Exit terminal mode', mode = 't' },
      { '<C-k>', [[<C-\><C-n><C-W>k]], desc = 'Move out of the terminal', mode = 't' },
      -- Neotest Mappings
      { '<leader>n', group = 'Neotest' },
      { '<leader>nt',
        function()
          require("neotest").run.run()
        end,
        desc = 'Run the nearest',
      },
      { '<leader>nT',
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = 'Run the file',
      },
      { '<leader>no',
        function()
          require("neotest").output.open({ enter = true })
        end,
         desc = 'Show test output',
      },
      -- Gitsigns Mappings
      { '<leader>g', group = 'Gitsigns' },
      { '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle current line blame' },
      { '<leader>gp', ':Gitsigns preview_hunk<CR>', desc = 'Preview selected hunk' },
      { '<leader>gd', ':Gitsigns diffthis<CR>', desc = 'Diff current buffer' },
      -- Obsidian Mapping
      { '<leader>o', group = 'Obsidian' },
      { '<leader>oDl', ":call delete(expand('%')) | bdelete<CR>", desc = 'Delete current file' },
    })
  end
}
