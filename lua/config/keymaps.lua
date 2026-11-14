for _, dir in ipairs { 'h', 'j', 'k', 'l' } do
  vim.keymap.set('n', '<C-' .. dir .. '>', '<C-w>' .. dir, { desc = 'focus window ' .. dir })
end
