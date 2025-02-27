return {
  -- language servers
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- replace `{ "K", vim.lsp.buf.hover, desc = "Hover" }`
      keys[7] = { "gh", vim.lsp.buf.hover, desc = "Hover" }
      keys[#keys + 1] = { "<leader>cd", ":LspRestart<cr>", desc = "LSP restart" }
      keys[#keys + 1] = { "<leader>cl", vim.lsp.codelens.run, desc = "LSP code lens" }
      keys[#keys + 1] = { "<space>cq", vim.diagnostic.setqflist, desc = "Put diagnostics in quickfix" }
      keys[#keys + 1] = { "<space>cz", vim.diagnostic.reset, desc = "Reset diagnostics" }
      keys[#keys + 1] = { "<leader>cx", vim.diagnostic.open_float, desc = "Line Diagnostics" }
      keys[#keys + 1] = { "<leader>cf", vim.lsp.buf.format, desc = "LSP format buffer" }
    end,
    ---@class PluginLspOpts
    opts = {
      document_highlight = {
        enabled = false,
      },
      inlay_hints = {
        enabled = false,
        variableTypes = { enabled = false },
      },
      servers = {
        volar = {
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
          init_options = {
            vue = {
              hybridMode = false,
            },
          },
          -- filetypes = {
          --   -- "typescrips",
          --   "vue",
          -- },
          -- root_dir = util.root_pattern("src/App.vue"),
        },
        cssls = {},
        dartls = {},
        rust_analyzer = {},
        pyright = {},
      },
      setup = {
        eslint = function()
          return {}
        end,
      },
    },
  },
}
