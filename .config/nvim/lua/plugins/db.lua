return {
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
    -- dir = '/Users/tafsen/dev/vim-dadbod-ui',
    -- dev = true,
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
      vim.keymap.set('n', '<leader>Do', '<Cmd>DBUIToggle<CR>', { desc = 'Go to DB Tool' })
      vim.keymap.set('n', '<leader>Ds', '<Cmd>DBList<CR>', { desc = 'Search saved queries' })
      vim.g.vim_dadbod_completion_mark = ''
    end,
  },
}
