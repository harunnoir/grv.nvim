local M = {}

function M.get(c, opts)
  local highlights = {}

  -- dirvish
  highlights.DirvishPathTail = 'Aqua'
  highlights.DirvishArg = 'Yellow'

  return highlights
end

return M
