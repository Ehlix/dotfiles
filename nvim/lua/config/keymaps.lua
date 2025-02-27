-- Keymaps are automatically loaded on the VeryLazy event                                                                   █
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua         █
-- Add any additional keymaps here

require("config.keymaps_lazyvim")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "!", ":!")

map("n", "<leader>wo", ":only<cr>", { desc = "Close other windows" })

-- delete buffer
map("n", "<leader>wd", ":bd<cr>")
-- delete buffer and file
map("n", "<leader>wD", ":!rm %<cr>:bd!<cr>")

-- Copy current file path to registers "* and "+
map("n", "<leader>cp", ":let @*=@%<cr>:let @+=@%<cr>")

-- Yank from the cursor to the end of the line, to be consistent with C and D.
map("n", "Y", "y$")

-- Start a substitute
map("n", "<leader>ss", ":%s/\v")

-- Pull word under cursor into LHS of a substitute (for quick search and replace)
map("n", "<leader>zs", ':%s#<C-r>=expand("<cword>")<cr>#')

-- wordwise yank from line above
vim.cmd([[
inoremap <silent> <C-Y> <C-C>:let @z = @"<cr>mz
      \:exec 'normal!' (col('.')==1 && col('$')==1 ? 'k' : 'kl')<cr>
      \:exec (col('.')==col('$')-1 ? 'let @" = @_' : 'normal! yw')<cr>
      \`zp:let @" = @z<cr>a
]])

-- Make the current file executable
map("n", "<leader>%", ":!chmod +x %<cr>")

-- Expand current filed dir in console mode
map("c", "%%", "<C-R>=expand('%:h').'/'<cr>")

-- Jump to line AND col
map("n", "'", "`")

-- Add empty lines before and after cursor line
map("n", "[<space>", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>", { desc = "Put empty line above" })
map("n", "]<space>", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>", { desc = "Put empty line below" })

-- Reselect latest changed, put, or yanked text
map(
  "n",
  "<leader>v",
  '"`[" . strpart(getregtype(), 0, 1) . "`]"',
  { expr = true, desc = "Visually select changed text" }
)

-- Correct latest misspelled word by taking first suggestion.
-- Use `<C-g>u` in Insert mode to mark this as separate undoable action.
-- Source: https://stackoverflow.com/a/16481737
-- NOTE: this remaps `<C-z>` in Normal mode (completely stops Neovim), but
-- it seems to be too harmful anyway.
map("n", "<C-Z>", "[s1z=", { desc = "Correct latest misspelled word" })
map("i", "<C-Z>", "<C-g>u<Esc>[s1z=`]a<C-g>u", { desc = "Correct latest misspelled word" })

-- folds
map("n", "<c-h>", "za", { desc = "Toggle Fold" })

--
map("n", "<C-J>", "<down>", { desc = "Down" })
map("n", "<C-K>", "<up>", { desc = "Up" })
