return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
      vim.keymap.set('n', '<leader>Do', '<Cmd>DBUIToggle<CR>', { desc = 'Go to DB Tool' })
      vim.g.vim_dadbod_completion_mark = ''
    end,
  },
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
}
