local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.MatchParenCur = { bold = true }
  highlights.MatchWord = { underline = true }
  highlights.MatchWordCur = { underline = true }

  return highlights
end

return M
