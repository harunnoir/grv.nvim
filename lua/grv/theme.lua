local M = {}

function M.setup()
  local config = require('grv.config').get_config()

  require('grv.util')

  local c = require('grv.colors.init').setup(config)

  require('grv.groups').setup(c, config)

  require('grv.terminal').setup(c, config)

  local ok, lualine = pcall(require, 'lualine')
  if ok and lualine then
    lualine.setup({ options = { theme = 'grv' } })
  end
end

return M
