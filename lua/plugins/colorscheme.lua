return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Enable transparent background
        transparent = true,
        
        -- Enable italics comments
        italic_comments = false,
        
        -- Replace all fillchars with ' ' for the ultimate clean look
        hide_fillchars = false,
        
        -- Modern borderless telescope theme - also applies to fzf-lua
        borderless_telescope = true,
        
        -- Set terminal colors used in `:terminal`
        terminal_colors = true,
        
        -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache
        -- Requires plenary.nvim to function.
        cache = false,
        
        theme = {
          variant = "default", -- use "light" for the light variant. Also accepts "auto" to set based on vim.o.background
          highlights = {
            -- Highlight groups to override, adding new groups is also supported
            -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

            -- Example:
            -- Comment = { fg = "#696969", bg = "NONE", italic = true },

            -- Complete groups can also be overridden, by using special key `complete`
            -- Complete = { fg = "#C586C0", bg = "NONE", complete = true }, -- Override the entire completion item kind highlight group

            -- If you want to also override a highlight group defined by another plugin, you may have to
            -- set the fg/bg color to "NONE" directly as the color might not be updated if a highlight group is already defined.
            -- NvimTreeNormal = { fg = "NONE", bg = "NONE" }, -- NvimTree background will now use the default Neovim background instead of cyberdream's darker background

            -- Example for lualine (can be found in lua/cyberdream/extensions/lualine.lua)
            -- lualine_*_normal = { fg = "#16181a", bg = "#5ef1ff" },
          },

          -- Override a color entirely
          colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Example:
            -- bg = "#000000",
            -- green = "#00ff00",
            -- magenta = "#ff00ff",
          },

          -- Override a highlight group entirely
          overrides = function(colours) -- NOTE: This function nullifies the `highlights` option
            -- Example:
            return {
              Comment = { fg = colours.green, bg = "NONE", italic = true },
              ["@property"] = { fg = colours.magenta, bold = true },
            }
          end,
        },

        -- Disable or enable colorscheme extensions
        extensions = {
          telescope = true,
          notify = true,
          mini = true,
        },
      })
      
      -- Set the colorscheme
      vim.cmd("colorscheme cyberdream")
    end,
  },

  -- Configure LazyVim to use cyberdream
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
