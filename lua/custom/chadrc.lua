local M = {}
require('dap-python').setup('/usr/bin/python')

M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

M.ui = {
  theme = "onedark",
  -- hl_add = require("custom.highlights").new_hlgroups,
  theme_toggle = { "onedark", "doomchad" },
  italic_comments = true,
  hl_override = require("custom.highlights").overriden_hlgroups
}

vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}
-- Use en_us to spellcheck
vim.opt.spelllang = "en_us"
vim.g.python3_host_prog = '/usr/bin/python3'
-- vim.g.python2_host_prog = '/usr/bin/python2'

-- let g:loaded_python3_provider=1
-- let g:_jukit_python_os_cmd = 'python3'

vim.cmd([[
set nohidden
set guifont=JetBrainsMonoMedium\ Nerd\ Font:h10
let g:neovide_remember_window_size = v:true
let g:neovide_refresh_rate=60
set background=dark
set termguicolors
set scrolloff=5
noremap o o<esc>
nnoremap O O<esc>
nmap <c-c> "+y
vmap <c-c> "+y
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
inoremap <c-r> <c-v>

set spelllang=nl,en_gb
let g:loaded_python3_provider = 1



nnoremap c "cc
vnoremap c "cc
nnoremap C vg_"cc
vnoremap C g_"cc
]])

-- set list listchars=eol:﬌



return M

