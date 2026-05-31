local M = {}

function M.get(c, opts)
  local highlights = {}

  -- dashboard
  highlights.DashboardHeader = 'Yellow'
  highlights.DashboardCenter = 'Green'
  highlights.DashboardShortcut = 'Red'
  highlights.DashboardFooter = 'Orange'

  return highlights
end

return M
