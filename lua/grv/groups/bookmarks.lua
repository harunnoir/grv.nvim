local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.BookmarkSign = 'BlueSign'
  highlights.BookmarkAnnotationSign = 'GreenSign'
  highlights.BookmarkLine = 'DiffChange'
  highlights.BookmarkAnnotationLine = 'DiffAdd'

  return highlights
end

return M
