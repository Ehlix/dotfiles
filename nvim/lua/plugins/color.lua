return {
  -- { "kar9222/minimalist.nvim" },
  -- {
  --   "chrsm/paramount-ng.nvim",
  --   dependencies = {
  --     "rktjmp/lush.nvim",
  --   },
  -- },
  -- {
  --   "kdheepak/monochrome.nvim",
  -- },
  -- {
  --   "andersevenrud/nordic.nvim",
  --   config = function()
  --     require("nordic").colorscheme({
  --       italic = false,
  --     })
  --   end,
  -- },
  {
    "olivercederborg/poimandres.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "poimandres",
      -- colorscheme = "tokyonight-night",
      -- colorscheme = "monochrome",
      -- colorscheme = "minimalist",
      -- colorscheme = "paramount-ng",
      -- load the default settings
      -- defaults = {
      --   autocmds = true, -- lazyvim.config.autocmds
      --   keymaps = false, -- lazyvim.config.keymaps
      --   options = true, -- lazyvim.config.optionsS
      -- },
    },
  },
}
