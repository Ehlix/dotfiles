local large = {
  width = 0.97,
  height = 0.95,
}
return {
  {
    "folke/snacks.nvim",
    opts = {
      styles = {
        lazygit = large,
        blame_line = large,
        notification_history = large,
      },
      explorer = {
        
      },
    },
    keys = {
      {
        "<space>e",
        function()
          Snacks.explorer({ cwd = LazyVim.root() })
        end,
        desc = "Explorer Snacks (root dir)",
      },
      {
        "<space>E",
        function()
          Snacks.explorer()
        end,
        desc = "Explorer Snacks (cwd)",
      },
    },
  },
  {
      "folke/snacks.nvim",
      opts = {
        dashboard = {
          preset = {
            keys = {
              {
                icon = "󰘬 ",
                key = "g",
                desc = "Git",
                action = function()
                  Snacks.lazygit()
                end,
              },
              {
                icon = " ",
                key = "f",
                desc = "Find File",
                action = ":lua Snacks.dashboard.pick('files', {winopts={fullscreen=true}})",
              },
              { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
              { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
              { icon = " ", key = "s", desc = "Restore Session", section = "session" },
              { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
              { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
              { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
            header = [[ N E O V I M]],
          },
        },
      },
    },
}

-- local logo = [[
--         =================     ===============     ===============   ========  ========
--         \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
--         ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
--         || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
--         ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
--         || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
--         ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
--         || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
--         ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
--         ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
--         ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
--         ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
--         ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
--         ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
--         ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||
--         ||.=='    _-'                                                     `' |  /==.||
--         =='    _-'                        N E O V I M                         \/   `==
--         \   _-'                                                                `-_   /
--          `''                                                                      ``'
-- ]]
