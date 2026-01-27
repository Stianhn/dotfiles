-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Prevents the results from dadbod being folded
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'dbout',
  callback = function()
    vim.opt_local.foldenable = false
  end,
})

local function augroup(name)
  return vim.api.nvim_create_augroup('lazyvim_' .. name, { clear = true })
end

vim.api.nvim_create_autocmd('VimEnter', {
  group = augroup 'autoupdate',
  callback = function()
    if require('lazy.status').has_updates then
      require('lazy').update { show = false }
    end
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'sql', 'mysql', 'plsql' },
  callback = function()
    vim.bo.commentstring = '-- %s'
  end,
})
