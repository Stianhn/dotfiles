return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
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
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup {}
    end,
  },
  'tpope/vim-sleuth',
  { 'numToStr/Comment.nvim', opts = {} },
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      local wk = require 'which-key'

      wk.add {
        { '<leader>c', group = '[C]ode' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>cf', '<cmd>Telescope find_files<cr>', desc = 'Find File', mode = 'n' },
      }

      wk.setup()
    end,
  },
  {
    'unblevable/quick-scope',
  },
}
