local M = {}

function M.get(c, opts)
  local highlights = {}
  highlights.RenderMarkdownH1 = { fg = c.red[1], bold = true }
  highlights.RenderMarkdownH2 = { fg = c.orange[1], bold = true }
  highlights.RenderMarkdownH3 = { fg = c.yellow[1], bold = true }
  highlights.RenderMarkdownH4 = { fg = c.green[1], bold = true }
  highlights.RenderMarkdownH5 = { fg = c.blue[1], bold = true }
  highlights.RenderMarkdownH6 = { fg = c.purple[1], bold = true }
  highlights.RenderMarkdownH1Bg = { bg = c.bg_visual_red[1] }
  highlights.RenderMarkdownH2Bg = { bg = c.bg_visual_yellow[1] }
  highlights.RenderMarkdownH3Bg = { bg = c.bg_visual_yellow[1] }
  highlights.RenderMarkdownH4Bg = { bg = c.bg_visual_green[1] }
  highlights.RenderMarkdownH5Bg = { bg = c.bg_visual_blue[1] }
  highlights.RenderMarkdownH6Bg = { bg = c.bg_visual_purple[1] }
  highlights.RenderMarkdownCode = { bg = c.bg1[1] }
  highlights.RenderMarkdownCodeBorder = { fg = c.bg4[1] }
  highlights.RenderMarkdownCodeInline = { fg = c.yellow[1], bg = c.bg3[1] }
  highlights.RenderMarkdownCodeFallback = { fg = c.grey1[1] }
  highlights.RenderMarkdownBullet = { fg = c.orange[1] }
  highlights.RenderMarkdownDash = { fg = c.bg4[1] }
  highlights.RenderMarkdownQuote = { fg = c.grey1[1] }
  highlights.RenderMarkdownQuote1 = { fg = c.blue[1] }
  highlights.RenderMarkdownQuote2 = { fg = c.aqua[1] }
  highlights.RenderMarkdownQuote3 = { fg = c.green[1] }
  highlights.RenderMarkdownQuote4 = { fg = c.yellow[1] }
  highlights.RenderMarkdownQuote5 = { fg = c.orange[1] }
  highlights.RenderMarkdownQuote6 = { fg = c.red[1] }
  highlights.RenderMarkdownInfo = { fg = c.blue[1] }
  highlights.RenderMarkdownSuccess = { fg = c.green[1] }
  highlights.RenderMarkdownHint = { fg = c.aqua[1] }
  highlights.RenderMarkdownWarn = { fg = c.yellow[1] }
  highlights.RenderMarkdownError = { fg = c.red[1] }
  highlights.RenderMarkdownTableHead = { fg = c.yellow[1], bold = true }
  highlights.RenderMarkdownTableRow = { fg = c.fg0[1] }
  highlights.RenderMarkdownLink = { fg = c.blue[1], underline = true }
  highlights.RenderMarkdownLinkTitle = { fg = c.aqua[1] }
  highlights.RenderMarkdownWikiLink = { fg = c.purple[1] }
  highlights.RenderMarkdownSign = { fg = c.grey1[1] }
  highlights.RenderMarkdownMath = { fg = c.purple[1] }
  highlights.RenderMarkdownChecked = { fg = c.green[1] }
  highlights.RenderMarkdownUnchecked = { fg = c.grey1[1] }
  highlights.RenderMarkdownTodo = { fg = c.yellow[1] }
  highlights.RenderMarkdownInlineHighlight = { fg = c.yellow[1], bg = c.bg3[1] }
  return highlights
end

return M
