return {
  -- edgy
   {
    "folke/edgy.nvim",
    opts = {
      options = {
        left = { size = 30 },
        bottom = { size = 10 },
        right = { size = 50 },
        top = { size = 10 },
      },
      animate = {
        enabled = false,
      },
    },
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        show_buffer_close_icons = false,
      },
    },
    keys = {
      { "<space>t",   "<Cmd>BufferLinePick<CR>",                 desc = "Buffer picker" },
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
      { "<leader>1",  "<Cmd>BufferLineGoToBuffer 1<CR>" },
      { "<leader>2",  "<Cmd>BufferLineGoToBuffer 2<CR>" },
      { "<leader>3",  "<Cmd>BufferLineGoToBuffer 3<CR>" },
      { "<leader>4",  "<Cmd>BufferLineGoToBuffer 4<CR>" },
      { "<leader>5",  "<Cmd>BufferLineGoToBuffer 5<CR>" },
      { "<leader>6",  "<Cmd>BufferLineGoToBuffer 6<CR>" },
      { "<leader>7",  "<Cmd>BufferLineGoToBuffer 7<CR>" },
      { "<leader>8",  "<Cmd>BufferLineGoToBuffer 8<CR>" },
      { "<leader>9",  "<Cmd>BufferLineGoToBuffer 9<CR>" },
    },
  },

  -- statusLine
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_a = {
        {
          "mode",
          fmt = function(str)
            return str:sub(1, 1)
          end,
        },
      }
      opts.sections.lualine_c[4] = { LazyVim.lualine.pretty_path({ length = 6 }) }
      -- remove dap:
      -- table.remove(opts.sections.lualine_y, 3)
    end,
  },
}
