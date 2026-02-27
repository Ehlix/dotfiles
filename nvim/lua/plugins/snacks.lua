local large = {
  width = 0.95,
  height = 0.9,
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
      picker = {
        sources = {
          gh_issue = {},
          gh_pr = {},
          explorer = {
            layout = {
              layout = {
                position = "left",
              },
            },
          },
        },
        -- wo = {
        --   winhighlight = "Normal:Normal,NormalFloat:NormalFloat",
        -- },
      },
      terminal = {
        wo = {
          winhighlight = "Normal:Normal",
        },
      },
      image = {},
      lazygit = {
        configure = true,
        config = {
          os = { editPreset = "nvim-remote" },
        },
      },
      gh = {
        wo = {
          winhighlight = "Normal:Normal",
        },
      },
      bigfile = {},
    },
    keys = {
      {
        "<space>e",
        function()
          Snacks.explorer.open({ cwd = LazyVim.root() })
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

      {
        "<leader>gi",
        function()
          Snacks.picker.gh_issue()
        end,
        desc = "GitHub Issues (open)",
      },
      {
        "<leader>gp",
        function()
          Snacks.picker.gh_pr()
        end,
        desc = "GitHub Pull Requests (open)",
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
