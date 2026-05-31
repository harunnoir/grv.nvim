local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.VMCursor = { fg = c.blue[1], bg = c.bg5[1] }
  vim.g.VM_Mono_hl = 'VMCursor'
  vim.g.VM_Extend_hl = 'Visual'
  vim.g.VM_Cursor_hl = 'VMCursor'
  vim.g.VM_Insert_hl = 'VMCursor'

  return highlights
end

return M
