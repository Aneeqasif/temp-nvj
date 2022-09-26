---- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "markdown",
    "bash",
    "lua",
  },
  indent = {
    enable = true,
    disable = {"python"}
},
}

M.nvimtree = {
  git = {
    enable = false,
  },

  view = {
     adaptive_size = false,
     side = "left",
     width = 27,
  },


  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.alpha =function()
  return {
  header = {
    val = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄ ",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █ ",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █ ",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
    },
  },
}
end

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",

    -- web dev

    -- shell
    "shellcheck",
  },
}

M.cmp = {
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = 'omni', keyword_length = 0 },
  },
}


M.luasnip = {

  history = true, --keep around last snippet local to jump back
	updateevents = "TextChanged,TextChangedI", --update changes as you type
	enable_autosnippets = true,
	-- ext_opts = {
	-- 	[require("luasnip.util.types").choiceNode] = {
	-- 		active = {
	-- 			virt_text = { { "●", "blue" } },
	-- 		},
	-- 	},
	-- 	-- [types.insertNode] = {
	-- 	-- 	active = {
	-- 	-- 		virt_text = { { "●", "GruvboxBlue" } },
	-- 	-- 	},
	-- 	-- },
	-- },

}
return M
