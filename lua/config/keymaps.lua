for _, dir in ipairs { 'h', 'j', 'k', 'l' } do
  vim.keymap.set('n', '<C-' .. dir .. '>', '<C-w>' .. dir, { desc = 'focus window ' .. dir })
end

vim.keymap.set('n', '<leader>dq', vim.diagnostic.setqflist, { desc = 'diagnostics quickfix' })
vim.keymap.set('n', '<leader>th', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = 0 })
end, { desc = 'toggle inlay hints' })
