local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.CurrentWordTwins = 'CurrentWord'
  highlights.illuminatedWord = 'CurrentWord'
  highlights.IlluminatedWordText = 'CurrentWord'
  highlights.IlluminatedWordRead = 'CurrentWord'
  highlights.IlluminatedWordWrite = 'CurrentWord'
  highlights.CursorWord0 = 'CurrentWord'
  highlights.CursorWord1 = 'CurrentWord'

  return highlights
end

return M
