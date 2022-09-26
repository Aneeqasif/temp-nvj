
local override = require "custom.override"
return {

  ['folke/which-key.nvim'] = {disable = false},
  ["andymass/vim-matchup"]={},
  ["tpope/vim-surround"]={},
  ["kevinhwang91/rnvimr"]={},
  ["shaun-mathew/Chameleon.nvim"] = {
    disable=true,
    after = "ui",
    config = function()
      require("chameleon").setup()
    end,
  },

  ["luk400/vim-jukit"]={
    disable = true,
    ft = {"python", "json"},
    config = function()
      require("custom.plugins.configs.jukit")
    end
  },
  ["hrsh7th/cmp-omni"] = {
   setup =  function()
    sources = require'cmp'.config.sources {
    { name = 'omni', keyword_length = 0 }  }
    end,
  },


  ["lervag/vimtex"]={
    ft = {"tex","bib"},
    config = function()
      require("custom.plugins.configs.vimtex")
    end,
  },

   ["goolord/alpha-nvim"] = {
    disable = false,
    override_options  = override.alpha
  },


  ["max397574/better-escape.nvim"] = {
    config = function()
      require("custom.plugins.configs.better_escape")
      end,
  },

  ["hrsh7th/nvim-cmp"] = {

    override_options  = override.cmp
},


   ["kyazdani42/nvim-tree.lua"] ={override_options =  override.nvimtree},
   ["nvim-treesitter/nvim-treesitter"] ={override_options =  override.treesitter},
   ["williamboman/mason.nvim"] ={override_options =  override.mason},

  ["L3MON4D3/LuaSnip"] = {
    config = function()
      require("custom.plugins.luasnip-setup")
    end,
    override_options =  override.luasnip,
  },


  ["wfxr/minimap.vim"] = {
     run = "cargo install --locked code-minimap",
         -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
             config = function ()
              vim.cmd ("let g:minimap_width = 10")
              vim.cmd ("let g:minimap_auto_start = 0")
              vim.cmd ("let g:minimap_auto_start_win_enter = 0")
             end,
   },




  ["mfussenegger/nvim-dap"] = {},
  ["nvim-telescope/telescope-dap.nvim"] = {},

  ["mfussenegger/nvim-dap-python"] = {},

  ["rcarriga/nvim-dap-ui"] = {
    config = function()
          require "custom.plugins.configs.dapui"
    end,
  },

  ["rcarriga/nvim-notify"] = {
    setup = function()
      require("core.lazy_load").on_file_open "nvim-notify"
    end,
    config = function()
      require "custom.plugins.configs.notify"
    end,
  },



  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
 },


   ["RRethy/vim-illuminate"] ={},
   ["simrat39/symbols-outline.nvim"] = {},


}

