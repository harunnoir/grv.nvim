local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.OilGitAdded = { fg = c.green[1] }
  highlights.OilGitModified = { fg = c.yellow[1] }
  highlights.OilGitRenamed = { fg = c.purple[1] }
  highlights.OilGitUntracked = { fg = c.aqua[1] }
  highlights.OilGitIgnored = { fg = c.grey1[1] }
  highlights.OilGitDeleted = { fg = c.red[1] }
  highlights.OilDir = 'Bold'
  return highlights
end

return M
