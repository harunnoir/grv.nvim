local M = {}

local function has(plugin)
  local path = plugin:gsub('%.', '/')
  return #vim.api.nvim_get_runtime_file('lua/' .. path .. '.lua', false) > 0
      or #vim.api.nvim_get_runtime_file('lua/' .. path .. '/init.lua', false) > 0
end

local function has_vim_plugin(name)
  return vim.fn.exists('#' .. name) == 1 or vim.g[name .. '_loaded'] == 1
end

local function plugin_available(name)
  return has(name) or has_vim_plugin(name)
end

local function apply(highlights)
  for group, hl in pairs(highlights) do
    if type(hl) == 'string' then
      vim.api.nvim_set_hl(0, group, { link = hl })
    elseif type(hl) == 'table' then
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

local plugin_registry = {
  { 'aerial',              has,        'aerial' },
  { 'agit',                has_vim_plugin, 'agit' },
  { 'ale',                 has_vim_plugin, 'ale' },
  { 'barbar',              has,        'barbar.nvim' },
  { 'blamer',              has,        'blamer' },
  { 'blink-cmp',           has,        'blink.cmp' },
  { 'bookmarks',           has_vim_plugin, 'bookmarks' },
  { 'buftabline',          has_vim_plugin, 'buftabline' },
  { 'chromatica',          has_vim_plugin, 'chromatica' },
  { 'clap',                has_vim_plugin, 'clap' },
  { 'cleverf',             has_vim_plugin, 'clever-f' },
  { 'coc',                 has_vim_plugin, 'coc' },
  { 'copilot',             has,        'copilot' },
  { 'ctrlp',               has_vim_plugin, 'ctrlp' },
  { 'dap-ui',              has,        'dapui' },
  { 'dashboard',           has,        'dashboard' },
  { 'denite',              has_vim_plugin, 'denite' },
  { 'dirvish',             has_vim_plugin, 'dirvish' },
  { 'easymotion',          has_vim_plugin, 'easymotion' },
  { 'fern',                has_vim_plugin, 'fern' },
  { 'flash',               has,        'flash' },
  { 'floaterm',            has_vim_plugin, 'floaterm' },
  { 'fzf',                 has_vim_plugin, 'fzf' },
  { 'fzf-lua',             has,        'fzf-lua' },
  { 'gitsigns',            has,        'gitsigns' },
  { 'gitgutter',           has_vim_plugin, 'gitgutter' },
  { 'hop',                 has,        'hop' },
  { 'illuminate',          has,        'illuminate' },
  { 'incline',             has,        'incline' },
  { 'indent-blankline',    has,        'ibl' },
  { 'indent-guides',       has_vim_plugin, 'indent_guides' },
  { 'indentline',          has_vim_plugin, 'indentLine' },
  { 'leaderf',             has_vim_plugin, 'leaderf' },
  { 'lightspeed',          has,        'lightspeed' },
  { 'limelight',           has_vim_plugin, 'limelight' },
  { 'llama',               has,        'llama' },
  { 'lspsaga',             has,        'lspsaga' },
  { 'luochen-rainbow',     has_vim_plugin, 'rbpt_colorpairs' },
  { 'mason',               has,        'mason' },
  { 'matchup',             has_vim_plugin, 'matchup' },
  { 'mini',                has,        'mini' },
  { 'multiple-cursors',    has_vim_plugin, 'multiple_cursors' },
  { 'navic',               has,        'nvim-navic' },
  { 'neo-tree',            has,        'neo-tree' },
  { 'neogit',              has,        'neogit' },
  { 'neomake',             has_vim_plugin, 'neomake' },
  { 'neotest',             has,        'neotest' },
  { 'nerdtree',            has_vim_plugin, 'nerdtree' },
  { 'netrw',               has_vim_plugin, 'netrw' },
  { 'noice',               has,        'noice' },
  { 'notify',              has,        'notify' },
  { 'nvim-cmp',            has,        'cmp' },
  { 'nvim-tree',           has,        'nvim-tree' },
  { 'octo',                has,        'octo' },
  { 'oil',                 has,        'oil' },
  { 'packer',              has_vim_plugin, 'packer' },
  { 'quickmenu',           has_vim_plugin, 'quickmenu' },
  { 'quickscope',          has_vim_plugin, 'quickscope' },
  { 'rainbow-delimiters',  has,        'rainbow-delimiters' },
  { 'rainbow-levels',      has_vim_plugin, 'rainbow_levels' },
  { 'render-markdown',     has,        'render-markdown' },
  { 'signature',           has_vim_plugin, 'signature' },
  { 'signify',             has_vim_plugin, 'signify' },
  { 'sneak',               has_vim_plugin, 'sneak' },
  { 'snacks',              has,        'snacks' },
  { 'startify',            has_vim_plugin, 'startify' },
  { 'syntastic',           has_vim_plugin, 'syntastic' },
  { 'telescope',           has,        'telescope' },
  { 'todo-comments',       has,        'todo-comments' },
  { 'trouble',             has,        'trouble' },
  { 'undotree',            has_vim_plugin, 'undotree' },
  { 'vim-lsp',             has_vim_plugin, 'vim_lsp' },
  { 'visual-multi',        has_vim_plugin, 'visual_multi' },
  { 'which-key',           has,        'which-key' },
  { 'yegappan-lsp',        has_vim_plugin, 'yegappan_lsp' },
  { 'youcompleteme',       has_vim_plugin, 'youcompleteme' },
}

local base_groups = { 'base', 'syntax', 'predefined', 'treesitter' }

local function has_plugin(name)
  for _, entry in ipairs(plugin_registry) do
    if entry[1] == name then
      return entry[2](entry[3])
    end
  end
  return false
end

function M.setup(c, opts)
  for _, name in ipairs(base_groups) do
    local ok, mod = pcall(require, 'grv.groups.' .. name)
    if ok then
      local highlights = mod.get(c, opts)
      apply(highlights)
    end
  end

  for _, entry in ipairs(plugin_registry) do
    local name = entry[1]
    local check_fn = entry[2]
    local target = entry[3]

    if opts.plugins[name] ~= false then
      if check_fn(target) ~= false then
        local ok, mod = pcall(require, 'grv.groups.' .. name)
        if ok then
          local highlights = mod.get(c, opts)
          apply(highlights)
        end
      end
    end
  end

  if not opts.better_performance then
    local ok_lang, mod_lang = pcall(require, 'grv.groups.languages')
    if ok_lang then
      local highlights = mod_lang.get(c, opts)
      apply(highlights)
    end
  end

  for _, def in ipairs(opts.user_highlights or {}) do
    if def.link then
      vim.api.nvim_set_hl(0, def.group, { link = def.link })
    else
      local hl_opts = vim.deepcopy(def)
      hl_opts.group = nil
      vim.api.nvim_set_hl(0, def.group, hl_opts)
    end
  end
end

return M
