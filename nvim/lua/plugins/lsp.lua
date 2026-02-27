return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      document_highlight = {
        enabled = false,
      },
      inlay_hints = {
        enabled = false,
      },
      servers = {
        eslint = {
          settings = {
            workingDirectory = { mode = "location" },
          },
        },
        ["*"] = {
          keys = {
            { "gh",         vim.lsp.buf.hover,         desc = "Hover" },
            { "<leader>cd", "<cmd>LspRestart<cr>",     desc = "LSP restart" },
            { "<leader>cl", vim.lsp.codelens.run,      desc = "LSP code lens",              mode = { "n", "x" } },
            { "<space>cq",  vim.diagnostic.setqflist,  desc = "Put diagnostics in quickfix" },
            { "<space>cz",  vim.diagnostic.reset,      desc = "Reset diagnostics" },
            { "<leader>cx", vim.diagnostic.open_float, desc = "Line Diagnostics" },
            { "<leader>cf", vim.lsp.buf.format,        desc = "LSP format buffer" },
            { "K",          false },
          },
        },

        volar = {
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
          init_options = {
            vue = { hybridMode = false },
          },
        },

        cssls = {},
        dartls = {},
        rust_analyzer = {},
        pyright = {},
      },
      setup = {
        eslint = function()
          vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function(event)
              if require("lspconfig.util").get_active_client_by_name(event.buf, "eslint") then
                vim.cmd("EslintFixAll")
              end
            end,
          })
        end,
      },
    },
  },
}
