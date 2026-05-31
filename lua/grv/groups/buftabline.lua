local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.BufTabLineCurrent = 'TabLineSel'
  highlights.BufTabLineActive = 'TabLine'
  highlights.BufTabLineHidden = 'TabLineFill'
  highlights.BufTabLineFill = 'TabLineFill'

  return highlights
end

return M
