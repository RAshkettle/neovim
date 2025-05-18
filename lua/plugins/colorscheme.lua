return {
  -- Configure colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,    -- load during startup
    priority = 1000, -- load this before all other plugins
    opts = {
      style = "storm", -- The theme comes in "storm", "moon", "night" and "day" variants
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- Apply colorscheme
      vim.cmd.colorscheme("tokyonight-storm")
    end,
  },
  
  -- Disable LazyVim's default colorscheme
  { "LazyVim/LazyVim", opts = { colorscheme = "tokyonight-storm" } },
  { "catppuccin/nvim", enabled = false },
}
