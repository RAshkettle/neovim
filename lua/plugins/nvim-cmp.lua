return {
  -- override nvim-cmp configuration to disable ghost text
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Disable ghost text
      opts.experimental = opts.experimental or {}
      opts.experimental.ghost_text = false
      
      -- Alternative: If you want to keep the feature but make it invisible
      -- vim.api.nvim_set_hl(0, "CmpGhostText", { fg = "NONE", bg = "NONE", default = true })
      
      return opts
    end,
  },
}
