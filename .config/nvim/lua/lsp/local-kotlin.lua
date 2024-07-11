vim.notify 'Loading plung'
vim.lsp.set_log_level 'debug'
local root_files = { 'build.gradle' }
local paths = vim.fs.find(root_files, { stop = vim.env.HOME })
local root_dir = vim.fs.dirname(paths[1])

local client = vim.lsp.start_client {
  name = 'Local Kotlin',
  cmd = {
    '/Users/tafsen/dev/kotlin-lsp/build/dist/bin/kotlin-lsp',
  },
  root_dir = root_dir,
}

if not client then
  vim.notify 'Failed to load Local kotlin'
  return
end

vim.lsp.buf_attach_client(0, client)

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'kotlin',
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
