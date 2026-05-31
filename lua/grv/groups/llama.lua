local M = {}

function M.get(c, opts)
  local highlights = {}

  highlights.llama_hl_fim_hint = 'Grey'
  highlights.llama_hl_fim_info = 'InlayHints'
  highlights.llama_hl_inst_src = 'Visual'
  highlights.llama_hl_inst_virt_proc = 'Grey'
  highlights.llama_hl_inst_virt_gen = 'Grey'
  highlights.llama_hl_inst_virt_ready = 'Grey'

  return highlights
end

return M
