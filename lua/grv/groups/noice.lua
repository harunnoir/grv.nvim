local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.NoiceCmdline = { fg = c.fg1[1], bg = c.bg_float[1] }
  highlights.NoiceCmdlineIcon = { fg = c.orange[1], bg = c.bg_float[1] }
  highlights.NoiceCmdlineIconSearch = { fg = c.yellow[1], bg = c.bg_float[1] }
  highlights.NoiceCmdlinePopup = { fg = c.fg1[1], bg = c.bg_float[1] }
  highlights.NoiceCmdlinePopupBorder = { fg = c.orange[1], bg = c.bg_float[1] }
  highlights.NoiceCmdlinePopupBorderSearch = { fg = c.yellow[1], bg = c.bg_float[1] }
  highlights.NoiceCmdlinePopupTitle = { fg = c.orange[1], bg = c.bg_float[1] }
  highlights.NoiceCmdlinePrompt = { fg = c.orange[1] }
  highlights.NoiceConfirm = { fg = c.fg1[1], bg = c.bg_float[1] }
  highlights.NoiceConfirmBorder = { fg = c.green[1], bg = c.bg_float[1] }
  highlights.NoicePopup = { fg = c.fg1[1], bg = c.bg_float[1] }
  highlights.NoicePopupBorder = { fg = c.border_fg[1], bg = c.bg_float[1] }
  highlights.NoicePopupTitle = { fg = c.title_fg[1], bg = c.bg_float[1], bold = true }
  highlights.NoiceSplit = { fg = c.fg1[1], bg = c.bg_float[1] }
  highlights.NoiceSplitBorder = { fg = c.border_fg[1], bg = c.bg_float[1] }
  highlights.NoiceScrollbar = { bg = c.bg_float[1] }
  highlights.NoiceScrollbarThumb = { bg = c.bg5[1] }
  highlights.NoiceVirtualText = { fg = c.grey1[1] }
  highlights.NoiceFormatTitle = { fg = c.title_fg[1], bold = true }
  highlights.NoiceFormatLevelInfo = { fg = c.blue[1] }
  highlights.NoiceFormatLevelWarn = { fg = c.yellow[1] }
  highlights.NoiceFormatLevelError = { fg = c.red[1] }
  highlights.NoiceFormatConfirm = { fg = c.green[1] }
  highlights.NoiceFormatDate = { fg = c.purple[1] }
  highlights.NoiceFormatEvent = { fg = c.grey1[1] }
  highlights.NoiceFormatKind = { fg = c.grey1[1] }
  highlights.NoiceFormatProgressDone = { bg = c.blue[1] }
  highlights.NoiceFormatProgressTodo = { bg = c.bg3[1] }

  return highlights
end

return M
