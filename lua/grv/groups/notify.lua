local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.NotifyBackground = { bg = c.bg0[1] }
  highlights.NotifyERRORBorder = 'Red'
  highlights.NotifyWARNBorder = 'Yellow'
  highlights.NotifyINFOBorder = 'Green'
  highlights.NotifyDEBUGBorder = 'Grey'
  highlights.NotifyTRACEBorder = 'Purple'
  highlights.NotifyERRORIcon = 'Red'
  highlights.NotifyWARNIcon = 'Yellow'
  highlights.NotifyINFOIcon = 'Green'
  highlights.NotifyDEBUGIcon = 'Grey'
  highlights.NotifyTRACEIcon = 'Purple'
  highlights.NotifyERRORTitle = 'Red'
  highlights.NotifyWARNTitle = 'Yellow'
  highlights.NotifyINFOTitle = 'Green'
  highlights.NotifyDEBUGTitle = 'Grey'
  highlights.NotifyTRACETitle = 'Purple'
  return highlights
end

return M
