local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.Boolean = { fg = c.yellow[1] }
  highlights.Number  = { fg = c.yellow[1] }
  highlights.Float   = { fg = c.yellow[1] }

  highlights.PreProc   = { fg = c.red[1], italic = opts.enable_italic }
  highlights.PreCondit = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Include   = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Define    = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Conditional = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Repeat    = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Keyword   = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Typedef   = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Exception = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Statement = { fg = c.red[1], italic = opts.enable_italic }

  highlights.Error        = { fg = c.red[1] }
  highlights.StorageClass = { fg = c.orange[1] }
  highlights.Tag          = { fg = c.orange[1] }
  highlights.Label        = { fg = c.orange[1] }
  highlights.Structure    = { fg = c.orange[1] }
  highlights.Operator     = { fg = c.grey2[1] }     -- parchment dim
  highlights.Title        = { fg = c.orange[1], bold = true }
  highlights.Special      = { fg = c.yellow[1] }
  highlights.SpecialChar  = { fg = c.yellow[1] }
  highlights.Type         = { fg = c.yellow[1] }

  highlights.Function   = { fg = c.orange[1], bold = opts.enable_bold }

  highlights.String     = { fg = c.yellow[1] }
  highlights.Character  = { fg = c.yellow[1] }
  highlights.Constant   = { fg = c.orange[1] }
  highlights.Macro      = { fg = c.red[1], italic = opts.enable_italic }
  highlights.Identifier = { fg = c.fg1[1] }         -- brightest parchment

  highlights.Todo = { fg = c.bg0[1], bg = c.orange[1], bold = true }

  highlights.Comment        = { fg = c.grey0[1], italic = not opts.disable_italic_comment }
  highlights.SpecialComment = { fg = c.grey0[1], italic = not opts.disable_italic_comment }

  highlights.Delimiter  = { fg = c.grey1[1] }       -- fades away
  highlights.Ignore     = { fg = c.grey0[1] }
  highlights.Underlined = { underline = true }

  return highlights
end

return M
