-- =============================================================================
-- URL: https://github.com/harunnoir/grv
-- Filename: lua/lualine/themes/grv.lua
-- Author: harunnoir
-- License: MIT License
-- =============================================================================

local configuration = require('grv.config').get_config()
local palette = require('grv.palette').get_palette(configuration)

if configuration.transparent_background == 2 then
  palette.bg_statusline1 = palette.none
  palette.bg_statusline2 = palette.none
end

-- Shared b/c sections — consistent across all modes
local b = { bg = palette.bg_statusline3[1], fg = palette.grey2[1] }
local c = { bg = palette.bg_statusline1[1], fg = palette.grey1[1] }
local b2 = { bg = palette.bg_statusline3[1], fg = palette.grey2[1] }
local c2 = { bg = palette.bg_statusline2[1], fg = palette.grey1[1] }

local theme
if configuration.statusline_style == 'default' then
  theme = {
    normal   = { a = { bg = palette.yellow[1],  fg = palette.bg0[1], gui = 'bold' }, b = b,  c = c  },
    insert   = { a = { bg = palette.orange[1],  fg = palette.bg0[1], gui = 'bold' }, b = b,  c = c  },
    visual   = { a = { bg = palette.purple[1],  fg = palette.bg0[1], gui = 'bold' }, b = b,  c = c  },
    replace  = { a = { bg = palette.red[1],     fg = palette.bg0[1], gui = 'bold' }, b = b,  c = c  },
    command  = { a = { bg = palette.aqua[1],    fg = palette.bg0[1], gui = 'bold' }, b = b,  c = c  },
    terminal = { a = { bg = palette.grey2[1],   fg = palette.bg0[1], gui = 'bold' }, b = b,  c = c  },
    inactive = { a = { bg = palette.bg_statusline1[1], fg = palette.bg5[1] },
                 b = { bg = palette.bg_statusline1[1], fg = palette.bg5[1] },
                 c = { bg = palette.bg_statusline1[1], fg = palette.bg5[1] } },
  }
elseif configuration.statusline_style == 'mix' then
  theme = {
    normal   = { a = { bg = palette.yellow[1],  fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    insert   = { a = { bg = palette.orange[1],  fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    visual   = { a = { bg = palette.purple[1],  fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    replace  = { a = { bg = palette.red[1],     fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    command  = { a = { bg = palette.aqua[1],    fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    terminal = { a = { bg = palette.grey2[1],   fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    inactive = { a = { bg = palette.bg_statusline2[1], fg = palette.bg5[1] },
                 b = { bg = palette.bg_statusline2[1], fg = palette.bg5[1] },
                 c = { bg = palette.bg_statusline2[1], fg = palette.bg5[1] } },
  }
else
  theme = {
    normal   = { a = { bg = palette.yellow[1],  fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    insert   = { a = { bg = palette.orange[1],  fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    visual   = { a = { bg = palette.purple[1],  fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    replace  = { a = { bg = palette.red[1],     fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    command  = { a = { bg = palette.aqua[1],    fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    terminal = { a = { bg = palette.grey2[1],   fg = palette.bg0[1], gui = 'bold' }, b = b2, c = c2 },
    inactive = { a = { bg = palette.bg_statusline2[1], fg = palette.bg5[1] },
                 b = { bg = palette.bg_statusline2[1], fg = palette.bg5[1] },
                 c = { bg = palette.bg_statusline2[1], fg = palette.bg5[1] } },
  }
end

return theme
