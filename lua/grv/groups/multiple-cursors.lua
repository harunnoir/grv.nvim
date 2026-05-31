local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.multiple_cursors_cursor = 'Cursor'
  highlights.multiple_cursors_visual = 'Visual'

  return highlights
end

return M
