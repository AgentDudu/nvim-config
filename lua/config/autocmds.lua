vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'highlight yanked text',
  callback = function() vim.hl.on_yank() end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'lsp buffer keymaps + inlay hints on',
  callback = function(ev)
    local set = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, { buffer = ev.buf, desc = desc })
    end
    set('gd', vim.lsp.buf.definition, 'go to definition')
    set('gD', vim.lsp.buf.declaration, 'go to declaration')
    set('K', function()
      -- toggle: b:lsp_floating_preview is set by core open_floating_preview
      local w = vim.b.lsp_floating_preview
      if w and vim.api.nvim_win_is_valid(w) then
        vim.api.nvim_win_close(w, true)
      else
        vim.lsp.buf.hover()
      end
    end, 'hover docs (toggle)')
    vim.lsp.inlay_hint.enable(true, { bufnr = ev.buf })
  end,
})
