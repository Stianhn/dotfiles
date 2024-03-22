vim.notify 'Loading plung'

local client = vim.lsp.start_client {
  name = 'Local Kotlin',
  cmd = {
    'sh',
    '-c',
    'cd /Users/tafsen/dev/kotlin-language-server && ./kotlin-language-server',
  },
}

if not client then
  vim.notify 'Failed to load Local kotlin'
  return
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'kotlin',
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
