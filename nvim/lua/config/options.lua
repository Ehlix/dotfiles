-- Options are automatically loaded before lazy.vim startup
-- Default vim.options that are always set: https://GitHub.com/Lazy Vim/Lazy Vim/blob/main/lea/lazy vim/con fig/options.lea
-- Add any additional vim.options here

vim.g.mapleader = ","
vim.g.maplocalleader = ","
vim.g.autoformat = false
vim.g.deprecation_warnings = false

-- vim.opt.mouse = "" -- Enable mouse mode
vim.opt.relativenumber = false -- Relative line numbers
vim.opt.scrolloff = 9          -- Lines of context

vim.opt.undofile = true        -- Enable persistent undo (see also `:h undo Dir`)
vim.opt.backup = false         -- Don't store backup while overwriting the file
vim.opt.writebackup = false    -- Don't store backup while overwriting the file
vim.opt.swapfile = false       -- Use an SCM instead of swap files

vim.opt.virtualedit = "block"  -- Allow going past the end of line in visual block mode

vim.opt.wrap = true            -- Line wrapping

-- vim.opt.spelllang = { "en_us" }
vim.opt.spell = true

vim.opt.virtualedit = "block" -- Allow going past the end of line in visual block mode

-- for edgy: Default splitting will cause your main splits to jump when opening an edgebar.
-- To prevent this, set `split keep` to either `screen` or `towline`.
vim.opt.splitkeep = "screen"

if vim.g.neovide then
  require("config.neovide")
end
