local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.ClapSelected = { fg = c.red[1], bold = true }
  highlights.ClapCurrentSelection = { bg = c.bg1[1], bold = true }
  highlights.ClapSpinner = { fg = c.orange[1], bg = c.bg3[1], bold = true }
  highlights.ClapBlines = { fg = c.fg1[1] }
  highlights.ClapProviderId = { fg = c.fg1[1], bold = true }
  highlights.ClapMatches1 = { fg = c.red[1], bold = true }
  highlights.ClapMatches2 = { fg = c.orange[1], bold = true }
  highlights.ClapMatches3 = { fg = c.yellow[1], bold = true }
  highlights.ClapMatches4 = { fg = c.aqua[1], bold = true }
  highlights.ClapMatches5 = { fg = c.blue[1], bold = true }
  highlights.ClapMatches6 = { fg = c.purple[1], bold = true }
  highlights.ClapFuzzyMatches = { fg = c.green[1], bold = true }
  highlights.ClapNoMatchesFound = { fg = c.red[1], bold = true }
  highlights.ClapInput = 'Pmenu'
  highlights.ClapDisplay = 'Pmenu'
  highlights.ClapPreview = 'Pmenu'
  for i = 1, 12 do
    highlights['ClapFuzzyMatches' .. i] = 'ClapFuzzyMatches'
  end
  highlights.ClapBlinesLineNr = 'Grey'
  highlights.ClapProviderColon = 'ClapBlines'
  highlights.ClapProviderAbout = 'ClapBlines'
  highlights.ClapFile = 'Fg'
  highlights.ClapSearchText = 'ClapFuzzyMatches'

  return highlights
end

return M
