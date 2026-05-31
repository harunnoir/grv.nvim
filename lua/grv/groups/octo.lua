local M = {}

function M.get(c, opts)
  local highlights = {}

  -- octo.nvim
  highlights.OctoViewer = { fg = c.bg0[1], bg = c.blue[1] }
  highlights.OctoGreenFloat = { fg = c.green[1], bg = c.bg3[1] }
  highlights.OctoRedFloat = { fg = c.red[1], bg = c.bg3[1] }
  highlights.OctoPurpleFloat = { fg = c.purple[1], bg = c.bg3[1] }
  highlights.OctoYellowFloat = { fg = c.yellow[1], bg = c.bg3[1] }
  highlights.OctoBlueFloat = { fg = c.blue[1], bg = c.bg3[1] }
  highlights.OctoGreyFloat = { fg = c.grey1[1], bg = c.bg3[1] }
  highlights.OctoBubbleGreen = { fg = c.bg0[1], bg = c.green[1] }
  highlights.OctoBubbleRed = { fg = c.bg0[1], bg = c.red[1] }
  highlights.OctoBubblePurple = { fg = c.bg0[1], bg = c.purple[1] }
  highlights.OctoBubbleYellow = { fg = c.bg0[1], bg = c.yellow[1] }
  highlights.OctoBubbleBlue = { fg = c.bg0[1], bg = c.blue[1] }
  highlights.OctoBubbleGrey = { fg = c.bg0[1], bg = c.grey1[1] }
  highlights.OctoGreen = 'Green'
  highlights.OctoRed = 'Red'
  highlights.OctoPurple = 'Purple'
  highlights.OctoYellow = 'Yellow'
  highlights.OctoBlue = 'Blue'
  highlights.OctoGrey = 'Grey'

  return highlights
end

return M
