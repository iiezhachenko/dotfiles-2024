return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre " .. vim.fn.expand "~" .. "/repos/Main Obsidian Vault/**/*.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/repos/Main Obsidian Vault/**/*.md"
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter"
  },
  config = function()
    require("obsidian").setup({
      note_id_func = function(title)
        return title
      end,

      workspaces = {
        {
          name = "personal",
          path = "~/repos/Main Obsidian Vault",
        },
      },
    })
  end
}
