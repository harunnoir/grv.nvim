local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.FlashMatch = { fg = c.fg0[1], bg = c.bg4[1] }
  highlights.FlashCurrent = { fg = c.yellow[1], bg = c.bg3[1], bold = true }
  highlights.FlashLabel = { fg = c.bg1[1], bg = c.red[1], bold = true }
  highlights.FlashBackdrop = { fg = c.grey1[1] }
  highlights.FlashPrompt = { fg = c.yellow[1], bg = c.bg1[1] }
  highlights.FlashPromptIcon = { fg = c.orange[1], bg = c.bg1[1] }
  highlights.FlashCursor = { fg = c.bg1[1], bg = c.aqua[1] }
  highlights.FlashTreesitter = { fg = c.bg1[1], bg = c.green[1], bold = true }
  highlights.FlashRemote = { fg = c.bg1[1], bg = c.blue[1] }
  return highlights
end

return M
