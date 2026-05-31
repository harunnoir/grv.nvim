local M = {}

function M.get(c, opts)
  local highlights = {}

  -- neogit
  highlights.NeogitNotificationInfo = 'Blue'
  highlights.NeogitNotificationWarning = 'Yellow'
  highlights.NeogitNotificationError = 'Red'
  highlights.NeogitDiffAdd = 'Green'
  highlights.NeogitDiffDelete = 'Red'
  highlights.NeogitDiffContextHighlight = 'CursorLine'
  highlights.NeogitHunkHeaderHighlight = 'TabLine'
  highlights.NeogitHunkHeader = 'TabLineFill'
  highlights.NeogitCommandCodeNormal = 'Green'
  highlights.NeogitCommandCodeError = 'Red'

  return highlights
end

return M
