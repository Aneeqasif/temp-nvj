local M = {}




local map = vim.keymap.set

-- Disable arrow keys
map({ 'n', 'i', 'v' }, '<down>'  , '<Nop>')
map({ 'n', 'i', 'v' }, '<left>'  , '<Nop>')
map({ 'n', 'i', 'v' }, '<right>' , '<Nop>')
map({ 'n', 'i', 'v' }, '<up>'    , '<Nop>')


-- call feedkeys("\<Plug>(vimtex-info)")

M.vimtex = {
  n = {
    -- ["<leader>lc"] = { "<cmd> VimtexCompile<CR>", "Compile latex with vimtex" },
    -- ["<leader>le"] = { "<cmd> VimtexErrors<CR>", "Vimtex Errors" },
    -- ["<leader>lt"] = { "<cmd> VimtexTocToggle<CR>", "Toggle TOC in Latex" },
    -- ["<leader>li"] = { '<cmd>lua vim.fn.feedkeys(string.format("%c%c%c(vimtex-info)", 0x80, 253, 83))<CR>' },
    ["<leader>li"] = { '<Plug>(vimtex-info)' , opts = {noremap = false } },  },
}

-- Apply macros
M.general = {
  n = {
    ["Q"] = { "@q", "apply macro normal mode" },

  },

  v = {
    ["Q"] = { "<cmd>norm @q<cr>", "apply macro visual mode" },

  }
}


M.lspconfig = {
  plugin = true,

  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions

  n = {
    ["<leader>as"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "show lsp floating info", },
  },
}




M.dap = {
  n = {
    ['<leader>dct'] = {'<cmd>lua require"dap".continue()<CR>'},
    ['<leader>dut'] = {'<cmd>lua require"dapui".toggle()<CR>'},
    ['<leader>dsv'] = {'<cmd>lua require"dap".step_over()<CR>'},
    ['<leader>dsi'] = {'<cmd>lua require"dap".step_into()<CR>'},
    ['<leader>dso'] = {'<cmd>lua require"dap".step_out()<CR>'},
    ['<leader>dtb'] = {'<cmd>lua require"dap".toggle_breakpoint()<CR>'},
    -- ['<leader>dsc'] = {'<cmd>lua require"dap.ui.variables".scopes()<CR>'},
    -- ['<leader>dhh'] = {'<cmd>lua require"dap.ui.variables".hover()<CR>'},
    -- ['<leader>dhv'] = {'<cmd>lua require"dap.ui.variables".visual_hover()<CR>'},
    ['<leader>duh'] = {'<cmd>lua require"dap.ui.widgets".hover()<CR>'},
    ['<leader>duf'] = {"<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>"},
    ['<leader>dsbr']= {'<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>'},
    ['<leader>dsbm'] = {'<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>'},
    ['<leader>dro'] = {'<cmd>lua require"dap".repl.open()<CR>'},
    -- ['<leader>drl'] = {'<cmd>lua require"dap".repl.run_last()<CR>'},

  }

}



M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
  },
}


-- M.truzen = {
--   n = {
--     ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
--     ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
--     ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
--   },
-- }



-- vim.keymap.set('n', '<space>as', vim.diagnostic.open_float, opts)

-- M.shade = {
--   n = {
--     ["<leader>s"] = {
--       function()
--         require("shade").toggle()
--       end,
--
--       "   toggle shade.nvim",
--     },
--
--     ["<leader>lz"] = {
--       function()
--         require("nvterm.terminal").send("lazygit", "vertical")
--       end,
--       "nvterm lazygit",
--     },
--   },
--
-- }

return M
