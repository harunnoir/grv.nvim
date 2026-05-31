local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.NeotestPassed = 'GreenSign'
  highlights.NeotestFailed = 'RedSign'
  highlights.NeotestRunning = 'YellowSign'
  highlights.NeotestSkipped = 'BlueSign'
  return highlights
end

return M
