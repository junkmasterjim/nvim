local M = {
  'goolord/alpha-nvim',
  branch = 'main'
}

M.config = function()
  local alpha = require 'alpha'
  local dashboard = require 'alpha.themes.dashboard'

  dashboard.section.header.val = {
    [[                            . .  ,  ,                                    , ,\/\/\           ]],
    [[                            |` \/ \/ \,',                          , |\|\|`     :           ]],
    [[                            ;          ` \/\,.               .-.|`              \           ]],
    [[                           :               ` \,/            \-\                  \          ]],
    [[                           |                  /              \                    :         ]],
    [[                           ;                 :                \          ____ ,-^-.         ]],
    [[                          :                  ;                 \       ,'    `.   o\        ]],
    [[                          |      ,---.      /                   \     (    o  :    ;        ]],
    [[                         :     ,'     `,-._ \                    \     \      ;`-"' )       ]],
    [[                         ;    (   o    \   `'                     \_    `-..-'   -'(        ]],
    [[                       _:      .      ,'  o ;                    ,'a`               \       ]],
    [[                      /,.`      `.__,'`-.__,                     `._,'   ,           )      ]],
    [[                      \_  _               \                         \   '`----=-----'       ]],
    [[                     ,'  / `,          `.,'                         ;       ,-'             ]],
    [[               ___,'`-._ \_/ `,._        ;                         /        \               ]],
    [[            __;_,'      `-.`-'./ `--.____)                       ,'          \              ]],
    [[         ,-'           _,--\^-'                                 ;             \             ]],
    [[       ,:_____      ,-'     \                                  '    ,        \ \            ]],
    [[      (,'     `--.  \;-._    ;                                /    /    .    .) \           ]],
    [[      :    Y      `-/    `,  :                               :    /           \  \          ]],
    [[      :    :       :     /_;'                                ;   |;            \  :         ]],
    [[      :    :       |    :                                    ;   |              | |         ]],
    [[       \    \      :    :                                    \   |          .   | :         ]],
    [[        `-._ `-.__, \    `.                                  )   \             ,' |         ]],
    [[           \   \  `. \     `.                                ,    ) ,----------|_;;         ]],
    [[         ,-;    \---)_\ ,','/                               (_/ //  | CENSORED |            ]],
    [[         \_ `---'--'" ,'^-;'                                  `' |  |__________|            ]],
    [[         (_`     ---'" ,-')                                      |     ; |    |             ]],
    [[         / `--.__,. ,-'    \                                     |     | |    |             ]],
    [[         )-.__,-- ||___,--' `-.                                  |     |,'    `-._          ]],
    [[        /._______,|__________,'\                                 |     `-._    `..)         ]],
    [[        `--.____,'|_________,-'                                  |       `.;""---`          ]],
    [[                                                                  `--._;_)-'                ]],
  }

  dashboard.section.buttons.val = {
    dashboard.button('e', '  [E]nter new file', ':ene <BAR> startinsert <CR>'),
    dashboard.button('q', '󰅚  [Q]uit NVIM', ':qa<CR>'),
    { type = 'padding', val = 1 },
    dashboard.button('s .', '󰅚  [S]earch recent files', ':Telescope oldfiles<CR>'),
    dashboard.button('s n', '󰅚  [S]earch [N]eovim files', ':Telescope find_files cwd=~/.config/nvim<CR>'),
    dashboard.button('s k', '󰅚  [S]earch [K]eymaps', ':Telescope keymaps<CR>'),
    dashboard.button('s h', '󰅚  [S]earch [H]elp', ':Telescope help_tags<CR>'),
  }

  local handle = io.popen 'fortune'
  local fortune = handle:read '*a'
  handle:close()
  dashboard.section.footer.val = fortune

  dashboard.config.opts.noautocmd = true
  vim.cmd [[autocmd User AlphaReady echo 'ready']]
  alpha.setup(dashboard.config)
end


return M
