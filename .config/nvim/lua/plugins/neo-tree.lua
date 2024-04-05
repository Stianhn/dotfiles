return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  keys = {
    {
      '<leader>e',
      '<Cmd>Neotree toggle<CR>',
      { desc = 'File Explorer' },
    },
  },
  opts = {
    close_if_last_window = true,
    window = {
      mappings = {
        ['o'] = 'open',
        -- Unbinding these is necesarry to prevent a delay when using o
        -- TODO: reseach what the keybindings bellow does.
        --
        ['oc'] = 'noop',
        ['od'] = 'noop',
        ['og'] = 'noop',
        ['om'] = 'noop',
        ['on'] = 'noop',
        ['os'] = 'noop',
        ['ot'] = 'noop',
      },
    },
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = true },
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
  end,
}
