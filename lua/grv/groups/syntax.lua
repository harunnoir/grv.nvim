local M = {}

function M.get(c, opts)
  local highlights = {}

  -- Numbers/booleans → yellow (same family as types, numerical values)
  highlights.Boolean = { fg = c.yellow[1] }
  highlights.Number  = { fg = c.yellow[1] }
  highlights.Float   = { fg = c.yellow[1] }

  -- Keywords → orange (the sharpest warm accent, control flow)
  highlights.PreProc    = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.PreCondit  = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Include    = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Define     = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Conditional= { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Repeat     = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Keyword    = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Typedef    = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Exception  = { fg = c.orange[1], italic = opts.enable_italic }
  highlights.Statement  = { fg = c.orange[1], italic = opts.enable_italic }

  -- Errors → red only (danger signal, nothing else uses red)
  highlights.Error        = { fg = c.red[1] }

  -- Structure/tags → orange (same as keywords, structural)
  highlights.StorageClass = { fg = c.orange[1] }
  highlights.Tag          = { fg = c.orange[1] }
  highlights.Label        = { fg = c.orange[1] }
  highlights.Structure    = { fg = c.orange[1] }

  -- Title → orange bold
  highlights.Title        = { fg = c.orange[1], bold = true }

  -- Types → yellow (warm, distinct from orange keywords)
  highlights.Type         = { fg = c.yellow[1] }
  highlights.Special      = { fg = c.grey1[1] }
  highlights.SpecialChar  = { fg = c.grey1[1] }

  -- Operators → grey1 (recedes, punctuation-level)
  highlights.Operator     = { fg = c.grey1[1] }

  -- Functions → fg1 (brightest parchment, most prominent non-accent)
  highlights.Function     = { fg = c.fg1[1], bold = opts.enable_bold }

  -- Strings → aqua (one cool muted accent, clearly distinct)
  highlights.String       = { fg = c.aqua[1] }
  highlights.Character    = { fg = c.aqua[1] }

  -- Constants → purple (one rose accent, rare and special)
  highlights.Constant     = { fg = c.purple[1] }

  -- Macros → orange italic (preprocessor family)
  highlights.Macro        = { fg = c.orange[1], italic = opts.enable_italic }

  -- Variables/identifiers → fg0 (one step below functions)
  highlights.Identifier   = { fg = c.fg0[1] }

  -- Todo → orange bg, dark text
  highlights.Todo = { fg = c.bg0[1], bg = c.orange[1], bold = true }

  -- Comments → bg5 (dimmest, fully recedes into background)
  highlights.Comment        = { fg = c.grey2[1], italic = not opts.disable_italic_comment }
  highlights.SpecialComment = { fg = c.grey2[1], italic = not opts.disable_italic_comment }

  -- Delimiters/brackets → grey0 (dark, structural noise)
  highlights.Delimiter  = { fg = c.grey0[1] }
  highlights.Ignore     = { fg = c.grey2[1] }
  highlights.Underlined = { underline = true }

  return highlights
end

return M
