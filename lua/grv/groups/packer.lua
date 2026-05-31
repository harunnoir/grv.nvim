local M = {}

function M.get(c, opts)
  local highlights = {}

  -- packer.nvim
  highlights.packerSuccess = 'Aqua'
  highlights.packerFail = 'Red'
  highlights.packerStatusSuccess = 'Fg'
  highlights.packerStatusFail = 'Fg'
  highlights.packerWorking = 'Yellow'
  highlights.packerString = 'Yellow'
  highlights.packerPackageNotLoaded = 'Grey'
  highlights.packerRelDate = 'Grey'
  highlights.packerPackageName = 'Green'
  highlights.packerOutput = 'Orange'
  highlights.packerHash = 'Green'
  highlights.packerTimeTrivial = 'Blue'
  highlights.packerTimeHigh = 'Red'
  highlights.packerTimeMedium = 'Yellow'
  highlights.packerTimeLow = 'Green'

  return highlights
end

return M
