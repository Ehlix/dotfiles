return {
  -- swap arguments and things
  {
    "mizlan/iswap.nvim",
    keys = {
      { "gw",         ":ISwapWithRight<cr>", desc = "Swap two arguments" },
      { "<leader>is", ":ISwap<cr>",          desc = "Swap many arguments" },
    },
    opts = {
      keys = "arstdhneio",
    },
  },

  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = cmp.mapping.preset.insert({
        ["<C-c>"] = cmp.mapping.abort(),
        ["<CR>"] = LazyVim.cmp.confirm(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        --   --   --   ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        --   --   --   ["<C-e>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-Space>"] = cmp.mapping.complete(),
      })
    end,
  },


  -- 30ms of load time for not much use
  { "echasnovski/mini.pairs",        enabled = false },
  { "rafa madriz/friendly-snippets", enabled = false },
  { "garymjr/nvim-snippets",         enabled = false },

  -- surround
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "<space>sa",            -- Add surrounding in Normal and Visual modes
        delete = "<space>sd",         -- Delete surrounding
        find = "<space>sf",           -- Find surrounding (to the right)
        find_left = "<space>sF",      -- Find surrounding (to the left)
        highlight = "<space>sh",      -- Highlight surrounding
        replace = "<space>sr",        -- Replace surrounding
        update_n_lines = "<space>sn", -- Update `n_lines`
      },
    },
  },

  -- syntax parser
  {
    "nvim-treesitter/nvim-treesitter",
    ---@type TSConfig
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      highlight = {
        disable = function(_, bufnr) -- Disable in large buffers
          return vim.api.nvim_buf_line_count(bufnr) > 10000
        end,
      },
      -- stylua: ignore
      ensure_installed = {
        "scala",
        "haskell",
        "rust",
        "scss",
        "dart",
        "hocon",
        "bash",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "vue",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "c"
      },
      ignore_install = { "help" },
    },
  },

  -- Show context of the current function
  { "nvim-treesitter/nvim-treesitter-context", enabled = false },
}
