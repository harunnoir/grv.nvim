local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.SnacksPicker = 'Normal'
  highlights.SnacksPickerBorder = 'Grey'
  highlights.SnacksPickerTitle = 'Title'
  highlights.SnacksPickerFooter = 'SnacksPickerTitle'
  highlights.SnacksPickerPrompt = 'Orange'
  highlights.SnacksPickerTotals = 'Grey'
  highlights.SnacksPickerInputCursorLine = 'Normal'
  highlights.SnacksPickerListCursorLine = 'DiffAdd'
  highlights.SnacksPickerMatch = { fg = c.green[1], bold = true }
  highlights.SnacksPickerToggle = 'CursorLine'
  highlights.SnacksPickerDir = 'Comment'
  highlights.SnacksPickerBufFlags = 'Blue'
  highlights.SnacksPickerKeymapRhs = 'Normal'
  return highlights
end

return M
