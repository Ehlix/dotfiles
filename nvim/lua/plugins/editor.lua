return {
  -- yank ring
  {
    "gbprod/yanky.nvim",
    opts = {
      highlight = { timer = 200 },
    },
    keys = {
      { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" } },
      { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" } },
      { "<c-e>", "<Plug>(YankyCycleForward)" },
      { "<c-n>", "<Plug>(YankyCycleBackward)" },
      { "]p", "<Plug>(YankyPutIndentAfterLinewise)" },
      { "[p", "<Plug>(YankyPutIndentBeforeLinewise)" },
    },
  },
  {
    "folke/flash.nvim",
    ---@type Flash.Config
    opts = {
      labels = "nteshdlpufiryw",
      modes = {
        char = {
          enabled = false,
          label = { exclude = "rdc" },
        },
        treesitter = {
          label = { before = false, after = false },
        },
      },
    },
    keys = function()
      -- ignore
      return {
        {
          "s",
          mode = { "n", "x", "o" },
          function()
            require("flash").jump()
          end,
          desc = "Flash",
        },
        {
          "S",
          mode = { "n", "o", "x" },
          function()
            require("flash").treesitter()
          end,
          desc = "Flash Treesitter",
        },
        -- { "r", mode = "o", function() requiee("flash").remote() end, desc = "Remote Flash" },
        -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        {
          "<c-s>",
          mode = { "c" },
          function()
            require("flash").toggle()
          end,
          desc = "Toggle Flash Search",
        },
      }
    end,
  },

  { "folke/todo-comments.nvim", enabled = false },

  {
    "folke/trouble.nvim",
    keys = {
      { "<space>d", "<cmd>TroubleToggle<cr>", desc = "Trouble toggle" },
      { "<space>D", "<cmd>Trouble<cr>", desc = "Trouble open" },
      {
        "<space><space>",
        function()
          local trouble = require("trouble")
          if not trouble.is_open() then
            trouble.open()
          end
          trouble.previous({ skip_groups = true, jump = false })
          trouble.next({ skip_groups = true, jump = true })
        end,
        desc = "First trouble item",
      },
    },
    -- opts = {
    --   use_diagnostic_signs = true,
    --   auto_open = false,
    --   auto_close = true,
    -- },
  },

  -- references
  -- {
  --   "RRethy/vim-illuminate",
  --   opts = { delay = 100 },
  -- },

  -- open file in GitHub
  {
    "almo7aya/openingh.nvim",
    lazy = true,
    keys = {
      { "<leader>gh", "<cmd>OpenInGHFile<cr>", mode = "n", desc = "Open file in GitHub" },
      { "<leader>gH", "<cmd>OpenInGHFileLines<cr>", mode = "v", desc = "Open file in GitHub" },
      { "<leader>gr", "<cmd>OpenInGHRepo<cr>", desc = "Open repo in GitHub" },
    },
  },

  {
    "gabrielpoca/replacer.nvim",
    keys = {
      { "<leader>qr", ':lua require("replacer").run()<cr>', desc = "QuickFix Replacer" },
    },
  },

  -- search/replace in multiple files
  {
    "nvim-pack/nvim-spectre",
    keys = {
      {
        "<leader>sr",
        function()
          require("spectre").open_visual({ select_word = true })
        end,
        desc = "Replace current word in files (Spectre)",
      },
    },
  },
}
