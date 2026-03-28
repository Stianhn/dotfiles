return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      current_line_blame = true,
    },
    config = function()
      require('gitsigns').setup()

      vim.keymap.set('n', '|', function()
        if vim.wo.diff then
          vim.cmd.normal { '|', bang = true }
        else
          require('gitsigns').next_hunk()
        end
      end)

      vim.keymap.set('n', '#', function()
        if vim.wo.diff then
          vim.cmd.normal { '#', bang = true }
        else
          require('gitsigns').prev_hunk()
        end
      end)

      vim.keymap.set('n', '<leader>gn', ':Gitsigns next_hunk<CR>', { desc = '[G]it [N]ext hunk' })
      vim.keymap.set('n', '<leader>gp', ':Gitsigns prev_hunk<CR>', { desc = '[G]it [P]revious hunk' })
      vim.keymap.set('n', '<leader>gs', ':Gitsigns preview_hunk<CR>', { desc = '[G]it [S]how hunk preview' })
      vim.keymap.set('n', '<leader>gb', ':Gitsigns blame_line<CR>', { desc = '[G]it [B]lame line' })
    end,
  },
}
