return {
  -- -- catppuccin
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   lazy = true,
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "mocha", -- latte, frappe, macchiato, mocha
  --       term_colors = true,
  --       transparent_background = false,
  --       show_end_of_buffer = false, -- show the '~' characters after the end of buffers
  --       no_italic = false,
  --       no_bold = false,
  --       styles = {
  --         comments = {},
  --         conditionals = {},
  --         loops = {},
  --         functions = {},
  --         keywords = {},
  --         strings = {},
  --         variables = {},
  --         numbers = {},
  --         booleans = {},
  --         properties = {},
  --         types = {},
  --       },
  --       color_overrides = {
  --         mocha = {
  --           -- base = "#000000",
  --           -- mantle = "#000000",
  --           -- crust = "#000000",
  --         },
  --       },
  --       highlight_overrides = {
  --         mocha = function(C)
  --           return {
  --             TabLineSel = { bg = C.pink },
  --             CmpBorder = { fg = C.surface2 },
  --             Pmenu = { bg = C.base },
  --             TelescopeBorder = { link = "FloatBorder" },
  --           }
  --         end,
  --       },
  --     })
  --   end,
  -- },
  --
  -- -- Tokyo Night
  -- {
  --   "folke/tokyonight.nvim",
  --   name = "tokyonight",
  --   lazy = true,
  --   opts = {
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --     transparent = true,
  --   },
  -- },

  -- -- One Dark
  -- {
  --   "navarasu/onedark.nvim",
  --   name = "onedark",
  --   config = function()
  --     -- Lua
  --     require("onedark").setup({
  --       -- Main options --
  --       style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  --       transparent = false, -- Show/hide background
  --       term_colors = true, -- Change terminal color as per the selected theme style
  --       ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  --       cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
  --
  --       -- toggle theme style ---
  --       toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
  --       toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
  --
  --       -- Change code style ---
  --       -- Options are italic, bold, underline, none
  --       -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
  --       code_style = {
  --         comments = "italic",
  --         keywords = "none",
  --         functions = "none",
  --         strings = "none",
  --         variables = "none",
  --       },
  --
  --       -- Lualine options --
  --       lualine = {
  --         transparent = false, -- lualine center bar transparency
  --       },
  --
  --       -- Custom Highlights --
  --       colors = {}, -- Override default colors
  --       highlights = {}, -- Override highlight groups
  --
  --       -- Plugins Config --
  --       diagnostics = {
  --         darker = true, -- darker colors for diagnostic
  --         undercurl = true, -- use undercurl instead of underline for diagnostics
  --         background = true, -- use background color for virtual text
  --       },
  --     })
  --   end,
  -- },

  -- -- Kanagawa
  -- {
  --   "rebelot/kanagawa.nvim",
  --   name = "kanagawa",
  --   lazy = true,
  --   config = function()
  --     require("kanagawa").setup({
  --       compile = false, -- enable compiling the colorscheme
  --       undercurl = true, -- enable undercurls
  --       commentStyle = { italic = true },
  --       functionStyle = {},
  --       keywordStyle = { italic = true },
  --       statementStyle = { bold = true },
  --       typeStyle = {},
  --       transparent = false, -- do not set background color
  --       dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  --       terminalColors = true, -- define vim.g.terminal_color_{0,17}
  --       colors = { -- add/modify theme and palette colors
  --         palette = {},
  --         theme = {
  --           wave = {
  --             ui = {
  --               bg_p1 = "#1a1a22", -- ColorColumn, Folded, Gutter
  --             },
  --           },
  --           lotus = {},
  --           dragon = {},
  --           all = {
  --             ui = {
  --               bg_gutter = "none", -- {Sign,Fold}Column, LineNr
  --               bg_p2 = "none", -- Cursor{Line,Column}, TabLineSel (Selected Items)
  --               bg_m3 = "#282727", -- LuaLine padding color mismatch temp fix
  --
  --               pmenu = {
  --                 bg = "none",
  --                 bg_sbar = "none",
  --               },
  --
  --               float = {
  --                 bg = "none",
  --                 bg_border = "none",
  --               },
  --             },
  --           },
  --         },
  --       },
  --       -- overrides = function(colors) -- add/modify highlights
  --       --   return {}
  --       -- end,
  --       theme = "wave", -- Load "wave" theme when 'background' option is not set
  --       background = { -- map the value of 'background' option to a theme
  --         dark = "dragon", -- try "dragon" !
  --         light = "lotus",
  --       },
  --     })
  --   end,
  -- },

  -- -- Vague
  -- {
  --   "vague2k/vague.nvim",
  --   config = function()
  --     require("vague").setup({
  --       -- optional configuration here
  --       transparent = false, -- don't set background
  --       colors = {
  --         comment = "#6e6e82",
  --       },
  --     })
  --   end,
  -- },

  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local lackluster = require("lackluster")
      local color = lackluster.color

      lackluster.setup({
        disable_plugin = {
          bufferline = true,
        },

        tweak_highlight = {
          FLoatBorder = {
            overwrite = true,
            -- fg = lackluster.color.gray5,
            bg = "none",
          },

          LspReferenceRead = {
            overwrite = true,
            bg = color.gray6,
          },

          LspReferenceWrite = {
            overwrite = true,
            bg = color.gray4,
          },

          LspReferenceText = {
            overwrite = true,
            bg = color.gray4,
          },
        },
      })
    end,
    init = function()
      -- vim.cmd.colorscheme("lackluster")
      -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
      vim.cmd.colorscheme("lackluster-mint")
    end,
  },

  -- tet default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster",
    },
  },
}
