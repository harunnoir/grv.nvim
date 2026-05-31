local M = {}

function M.get(c, opts)
  local highlights = {}

  vim.g.fzf_colors = {
    fg      = { 'fg', 'Normal' },
    bg      = { 'bg', 'Normal' },
    hl      = { 'fg', 'Green' },
    ['fg+'] = { 'fg', 'CursorLine', 'CursorColumn', 'Normal' },
    ['bg+'] = { 'bg', 'CursorLine', 'CursorColumn' },
    ['hl+'] = { 'fg', 'Aqua' },
    info    = { 'fg', 'Aqua' },
    border  = { 'fg', 'Grey' },
    prompt  = { 'fg', 'Orange' },
    pointer = { 'fg', 'Blue' },
    marker  = { 'fg', 'Yellow' },
    spinner = { 'fg', 'Yellow' },
    header  = { 'fg', 'Grey' },
  }

  return highlights
end

return M
