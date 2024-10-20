return {
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
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        color_overrides = {},
      })
    end,
  },
  -- {
  --   "olivercederborg/poimandres.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   -- config = function()
  --   --   require("poimandres").setup({
  --   --     -- disable_background = true,
  --   --     groups = {
  --   --       -- background = '#000000',
  --   --     }
  --   --   })
  --   -- end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "poimandres",
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
