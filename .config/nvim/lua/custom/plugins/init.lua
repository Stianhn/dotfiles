return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'Wansmer/treesj',
    keys = { '<leader>tm', '<leader>tj', '<leader>ts' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup {--[[ your config ]]
      }
    end,
  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      signs = false,
      keywords = {
        OPTIONS = { icon = 'x', color = 'hint' },
      },
    },
  },
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup {}
    end,
  },
}
