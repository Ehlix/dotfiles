-- local map = vim.keymap.set

return {
  -- {
  --   "folke/which-key.nvim",
  --   opts = {
  --     defaults = {
  --       ["<leader>cn"] = { name = "+node packages" },
  --     },
  --   },
  -- },
  -- status line in ui config
  -- {
  --   "vuki656/package-info.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   config = function()
  --     require("package-info").setup({
  --       package_manager = "npm",
  --       hide_up_to_date = true,
  --     })
  --     -- keymaps
  --     map(
  --       "n",
  --       "<leader>cnt",
  --       "<cmd>lua require('package-info').toggle()<cr>",
  --       { silent = true, noremap = true, desc = "Toggle" }
  --     )
  --     map(
  --       "n",
  --       "<leader>cns",
  --       "<cmd>lua require('package-info').show({ force = true })<cr>",
  --       { silent = true, noremap = true, desc = "Show packages (force)" }
  --     )
  --     map(
  --       "n",
  --       "<leader>cnd",
  --       "<cmd>lua require('package-info').delete()<cr>",
  --       { silent = true, noremap = true, desc = "Delete package" }
  --     )
  --     map(
  --       "n",
  --       "<leader>cnu",
  --       "<cmd>lua require('package-info').update()<cr>",
  --       { silent = true, noremap = true, desc = "Update package" }
  --     )
  --     map(
  --       "n",
  --       "<leader>cni",
  --       "<cmd>lua require('package-info').install()<cr>",
  --       { silent = true, noremap = true, desc = "Install package" }
  --     )
  --     map(
  --       "n",
  --       "<leader>cnc",
  --       "<cmd>lua require('package-info').change_version()<cr>",
  --       { silent = true, noremap = true, desc = "Change package version" }
  --     )
  --   end,
  -- },
}
