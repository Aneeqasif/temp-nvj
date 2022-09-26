local enable_providers = {
      "python3_provider",
      -- and so on
    }


    for _, plugin in pairs(enable_providers) do
      vim.g["loaded_" .. plugin] = nil
      vim.cmd("runtime " .. plugin)
    end


vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}


vim.g.maplocalleader = ' '



vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]











-- local ls = require("luasnip") --{{{
--
-- -- require("luasnip.loaders.from_vscode").lazy_load()
-- require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/custom/snippets/" })
-- require("luasnip").config.setup({ store_selection_keys = "<A-p>" })
--
-- vim.cmd([[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]]) --}}}
--
-- -- Virtual Text{{{
-- local types = require("luasnip.util.types")
-- ls.config.set_config({
-- 	history = true, --keep around last snippet local to jump back
-- 	updateevents = "TextChanged,TextChangedI", --update changes as you type
-- 	enable_autosnippets = true,
-- 	ext_opts = {
-- 		[types.choiceNode] = {
-- 			active = {
-- 				virt_text = { { "●", "GruvboxOrange" } },
-- 			},
-- 		},
-- 		-- [types.insertNode] = {
-- 		-- 	active = {
-- 		-- 		virt_text = { { "●", "GruvboxBlue" } },
-- 		-- 	},
-- 		-- },
-- 	},
-- }) --}}}
--
-- -- Key Mapping --{{{
--
-- vim.keymap.set({ "i", "s" }, "<c-s>", "<Esc>:w<cr>")
-- vim.keymap.set({ "i", "s" }, "<c-u>", '<cmd>lua require("luasnip.extras.select_choice")()<cr><C-c><C-c>')
--
-- vim.keymap.set({ "i", "s" }, "<a-p>", function()
-- 	if ls.expand_or_jumpable() then
-- 		ls.expand()
-- 	end
-- end, { silent = true })
-- -- vim.keymap.set({ "i", "s" }, "<C-k>", function()
-- -- 	if ls.expand_or_jumpable() then
-- -- 		ls.expand_or_jump()
-- -- 	end
-- -- end, { silent = true })
-- -- vim.keymap.set({ "i", "s" }, "<C-j>", function()
-- -- 	if ls.jumpable() then
-- -- 		ls.jump(-1)
-- -- 	end
-- -- end, { silent = true })
--
-- vim.keymap.set({ "i", "s" }, "<A-y>", "<Esc>o", { silent = true })
--
-- vim.keymap.set({ "i", "s" }, "<a-k>", function()
-- 	if ls.jumpable(1) then
-- 		ls.jump(1)
-- 	end
-- end, { silent = true })
-- vim.keymap.set({ "i", "s" }, "<a-j>", function()
-- 	if ls.jumpable(-1) then
-- 		ls.jump(-1)
-- 	end
-- end, { silent = true })
--
-- vim.keymap.set({ "i", "s" }, "<a-l>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(1)
-- 	else
-- 		-- print current time
-- 		local t = os.date("*t")
-- 		local time = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
-- 		print(time)
-- 	end
-- end)
-- vim.keymap.set({ "i", "s" }, "<a-h>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(-1)
-- 	end
-- end) --}}}
--
-- -- More Settings --
--
-- vim.keymap.set("n", "<Leader><CR>", "<cmd>LuaSnipEdit<cr>", { silent = true, noremap = true })
-- vim.cmd([[autocmd BufEnter */snippets/*.lua nnoremap <silent> <buffer> <CR> /-- End Refactoring --<CR>O<Esc>O]])
--
-- --
-- --
-- local M = {}
--
--
-- -- make sure you maintain the structure of `core/default_config.lua` here,
-- -- example of changing theme:
--
-- M.ui = {
--    theme = "onedark",
-- }
--
-- vim.cmd([[
--
-- set smarttab
-- set guifont=JetBrainsMono\ Nerd\ Font:h11
-- let g:neovide_remember_window_size = v:true
-- let g:neovide_refresh_rate=60
-- set smarttab
-- set background=dark
-- let g:gruvbox_contrast="hard"
-- set termguicolors
-- set scrolloff=5
-- noremap o o<esc>
-- nnoremap O O<esc>
-- " highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
--
-- ]])
--
--
-- -- Mappings.
-- -- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- local opts = { noremap=true, silent=true }
-- vim.keymap.set('n', '<space>as', vim.diagnostic.open_float, opts)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
--
-- local on_attach = function(client, bufnr)
--   -- Enable completion triggered by <c-x><c-o>
--   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--   -- Mappings.
--   -- See `:help vim.lsp.*` for documentation on any of the below functions
--   local bufopts = { noremap=true, silent=true, buffer=bufnr }
--   vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
--   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
--   vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
--   vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
--   vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
--   vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
--
--
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
--   -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
--   -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
--   -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
--
--
--
--
--   vim.keymap.set('n', '<space>wl', function()
--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--   end, bufopts)
--  end
--
--
-- vim.cmd [[
-- " system clipboard
-- nmap <c-c> "+y
-- vmap <c-c> "+y
-- " nmap <c-v> "+p
-- inoremap <c-v> <c-r>+
-- cnoremap <c-v> <c-r>+
-- " use <c-r> to insert original character without triggering things like auto-pairs
-- inoremap <c-r> <c-v>
-- ]]
--
--
-- M.plugins = {
--    user = require "custom.plugins"
-- }
--
--
-- return M
--
--
--
--
