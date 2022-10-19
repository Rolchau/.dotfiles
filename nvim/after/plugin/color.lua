--local Color, colors, Group, groups, styles = require('colorbuddy').setup()
local colorbuddy = require('colorbuddy.init')
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

local my_colors = {
  bg = "#07242c"
}

-- using colorbuddy to set a custom color for TODO 
--n.Group.new('TODO', n.colors.red)
-- require('kanagawa').setup({colors = my_colors})
-- vim.cmd("colorscheme kanagawa")
vim.cmd("colorscheme moonfly")

-- Color Highligthing
require('nvim-highlight-colors').setup {}

