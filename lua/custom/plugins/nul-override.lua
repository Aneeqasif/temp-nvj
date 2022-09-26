---- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "markdown",
    "bash",
    "lua",
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

M.alpha = {
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

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",

    -- web dev

    -- shell
    "shellcheck",
  },
}

-- local types = require("luasnip.util.types")
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
