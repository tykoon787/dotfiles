local home = os.getenv('HOME')
local db = require('dashboard')
db.preview_file_path = home .. '/.config/nvim/init.lua'
  db.preview_file_height = 11
  db.preview_file_width = 70
  db.custom_center = {
      {icon = '  ',
      desc = 'Recently latest session                  ',
      shortcut = 'SPC s l',
      action ='SessionLoad'},
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'builtin.command_history',
      shortcut = 'SPC f h'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = 'SPC f b'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'},
      {icon = '  ',
      desc = 'Open Personal dotfiles                  ',
      action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
      shortcut = 'SPC f d'},
    }
vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
  a = {description = {'  Find File          '}, command = ':Telescope find_files'},
  d = {description = {'  Search Text        '}, command = ':Telescope live_grep'},
  b = {description = {'  Recent Files       '}, command = ':Telescope oldfiles'},
  e = {description = {'  Config             '}, command = 'edit ~/.config/nvim/lua/init.lua'
  },
  f = {description = {'  Git                '}, command = 'LazyGit'}
}
vim.g.dashboard_custom_footer = {'Do one thing, do it well - Unix philosophy'}
