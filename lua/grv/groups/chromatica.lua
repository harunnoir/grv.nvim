local M = {}

function M.get(c, opts)
  local highlights = {}

  -- chromatica
  highlights.Member = 'TSVariable'
  highlights.Variable = 'TSVariable'
  highlights.Namespace = 'TSNamespace'
  highlights.EnumConstant = 'TSNumber'
  highlights.chromaticaException = 'TSException'
  highlights.chromaticaCast = 'TSLabel'
  highlights.OperatorOverload = 'TSOperator'
  highlights.AccessQual = 'TSOperator'
  highlights.Linkage = 'TSOperator'
  highlights.AutoType = 'TSType'

  return highlights
end

return M
