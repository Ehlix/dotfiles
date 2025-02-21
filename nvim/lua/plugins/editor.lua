return {
  -- yank ring
  {
    "gbprod/yanky.nvim",
    opts = {
      highlight = { timer = 150 },
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
    opts = {
      auto_close = true, -- auto close when there are no items
      -- auto_preview = true, -- automatically open preview when on an item
      auto_refresh = true, -- auto refresh when open
      modes = {
        -- errors = {
        --   mode = "diagnostics", -- inherit from diagnostics mode
        --   auto_open = false, -- auto open when there are items
        --   filter = {
        --     any = {
        --       {
        --         severity = vim.diagnostic.severity.ERROR, -- errors only
        --       },
        --     },
        --   },
        -- },
        -- mydiags = {
        --   mode = "diagnostics", -- inherit from diagnostics mode
        --   auto_open = true, -- auto open when there are items
        --   filter = {
        --     any = {
        --       buf = 0, -- current buffer
        --       {
        --         severity = vim.diagnostic.severity.ERROR, -- errors only
        --         -- limit to files in the current project
        --         function(item)
        --           return item.filename:find((vim.loop or vim.uv).cwd(), 1, true)
        --         end,
        --       },
        --     },
        --   },
        -- },
        cascade = {
          mode = "diagnostics", -- inherit from diagnostics mode
          auto_open = false, -- auto open when there are items
          filter = function(items)
            local severity = vim.diagnostic.severity.HINT
            for _, item in ipairs(items) do
              severity = math.min(severity, item.severity)
            end
            return vim.tbl_filter(function(item)
              return item.severity == severity
            end, items)
          end,
        },
      },
    },
    keys = {
      { "<space>d", "<cmd>Trouble cascade toggle<cr>", desc = "Diagnostics (Trouble)" },
      {
        "<space><space>",
        "<cmd>Trouble cascade open focus=true<cr>",
        desc = "Diagnostics (Trouble)",
      },
    },
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
      { "<leader>gH", "<cmd>OpenInGHFileLines!<cr>", mode = "v", desc = "Open file in GitHub" },
    },
  },

  {
    "gabrielpoca/replacer.nvim",
    lazy = true,
    keys = {
      { "<leader>qr", ':lua require("replacer").run()<cr>', desc = "QuickFix Replacer" },
    },
  },

  { "meznaric/key-analyzer.nvim", opts = {}, cmd = "KeyAnalyzer" },
}
