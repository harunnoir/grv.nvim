local M = {}

function M.get(c, opts)
  local highlights = {}

  -- mason.nvim
  highlights.MasonHeader = { fg = c.bg0[1], bg = c.red[1], bold = true }
  highlights.MasonHeaderSecondary = { fg = c.bg0[1], bg = c.orange[1], bold = true }
  highlights.MasonHighlight = 'Green'
  highlights.MasonHighlightSecondary = 'Yellow'
  highlights.MasonHighlightBlock = { fg = c.bg0[1], bg = c.orange[1] }
  highlights.MasonHighlightBlockBold = { fg = c.bg0[1], bg = c.orange[1], bold = true }
  highlights.MasonHighlightBlockSecondary = { fg = c.bg0[1], bg = c.red[1] }
  highlights.MasonHighlightBlockBoldSecondary = { fg = c.bg0[1], bg = c.red[1], bold = true }
  highlights.MasonMuted = { fg = c.grey0[1] }
  highlights.MasonMutedBlock = { fg = c.bg0[1], bg = c.grey0[1] }

  return highlights
end

return M
