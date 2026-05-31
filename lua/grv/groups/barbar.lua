local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.BufferCurrent = { fg = c.fg1[1], bg = c.bg0[1] }
  highlights.BufferCurrentIndex = { fg = c.fg1[1], bg = c.bg0[1] }
  highlights.BufferCurrentMod = { fg = c.blue[1], bg = c.bg0[1] }
  highlights.BufferCurrentTarget = { fg = c.red[1], bg = c.bg0[1], bold = true }
  highlights.BufferCurrentSign = { fg = c.grey2[1], bg = c.bg0[1] }
  highlights.BufferCurrentADDED = { fg = c.green[1], bg = c.bg0[1] }
  highlights.BufferCurrentDELETED = { fg = c.red[1], bg = c.bg0[1] }
  highlights.BufferCurrentCHANGED = { fg = c.blue[1], bg = c.bg0[1] }
  highlights.BufferVisible = { fg = c.fg1[1], bg = c.bg_dim[1] }
  highlights.BufferVisibleIndex = { fg = c.fg1[1], bg = c.bg_dim[1] }
  highlights.BufferVisibleMod = { fg = c.blue[1], bg = c.bg_dim[1] }
  highlights.BufferVisibleSign = { fg = c.grey2[1], bg = c.bg_dim[1] }
  highlights.BufferVisibleTarget = { fg = c.yellow[1], bg = c.bg_dim[1], bold = true }
  highlights.BufferInactive = { fg = c.grey1[1], bg = c.bg_dim[1] }
  highlights.BufferInactiveIndex = { fg = c.grey1[1], bg = c.bg_dim[1] }
  highlights.BufferInactiveMod = { fg = c.grey1[1], bg = c.bg_dim[1] }
  highlights.BufferInactiveTarget = { fg = c.yellow[1], bg = c.bg_dim[1], bold = true }
  highlights.BufferInactiveSign = { fg = c.grey0[1], bg = c.bg_dim[1] }
  highlights.BufferInactiveADDED = 'BufferInactiveSign'
  highlights.BufferInactiveDELETED = 'BufferInactiveSign'
  highlights.BufferInactiveCHANGED = 'BufferInactiveSign'
  highlights.BufferTabpages = { fg = c.grey1[1], bg = c.bg_dim[1], bold = true }
  highlights.BufferTabpagesSep = { fg = c.grey0[1], bg = c.bg_dim[1], bold = true }
  highlights.BufferTabpageFill = { fg = c.bg_dim[1], bg = c.bg_dim[1] }
  return highlights
end

return M
