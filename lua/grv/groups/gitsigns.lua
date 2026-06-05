local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.GitSignsAdd              = { fg = c.git.add[1] }
  highlights.GitSignsChange           = { fg = c.git.change[1] }
  highlights.GitSignsDelete           = { fg = c.git.delete[1] }
  highlights.GitSignsAddNr            = { fg = c.git.add[1] }
  highlights.GitSignsChangeNr         = { fg = c.git.change[1] }
  highlights.GitSignsDeleteNr         = { fg = c.git.delete[1] }
  highlights.GitSignsAddLn            = 'DiffAdd'
  highlights.GitSignsChangeLn         = 'DiffChange'
  highlights.GitSignsDeleteLn         = 'DiffDelete'
  highlights.GitSignsStagedAdd        = { fg = c.git.add[1] }
  highlights.GitSignsStagedChange     = { fg = c.git.change[1] }
  highlights.GitSignsStagedDelete     = { fg = c.git.delete[1] }
  highlights.GitSignsStagedAddNr      = { fg = c.git.add[1] }
  highlights.GitSignsStagedChangeNr   = { fg = c.git.change[1] }
  highlights.GitSignsStagedDeleteNr   = { fg = c.git.delete[1] }
  highlights.GitSignsCurrentLineBlame = { fg = c.bg5[1], italic = true }

  return highlights
end

return M
