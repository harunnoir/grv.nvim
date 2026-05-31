local M = {}

function M.get(c, opts)
  local highlights = {}

  local function todo(kw, color)
    highlights['TodoFg' .. kw] = { fg = color[1] }
    highlights['TodoBg' .. kw] = { fg = color[1], bold = true }
    highlights['TodoSign' .. kw] = { fg = color[1], bg = c.bg2[1] }
  end

  todo('FIX',  c.red)
  todo('TODO', c.blue)
  todo('HACK', c.yellow)
  todo('WARN', c.yellow)
  todo('PERF', c.aqua)
  todo('NOTE', c.purple)
  todo('TEST', c.green)

  return highlights
end

return M
