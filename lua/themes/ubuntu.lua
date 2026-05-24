-- Ubuntu theme — based on Ubuntu brand colors
-- bg: Ubuntu aubergine #2C001E, accent: Ubuntu orange #E95420

local M = {}

M.base_30 = {
  white = "#F2F2F2",
  darker_black = "#1a0012",
  black = "#2C001E", -- nvim bg (Ubuntu aubergine)
  black2 = "#380126",
  one_bg = "#48022f",
  one_bg2 = "#570338",
  one_bg3 = "#660440",
  grey = "#7a3060",
  grey_fg = "#8a4070",
  grey_fg2 = "#9a5080",
  light_grey = "#b07090",
  red = "#E95420", -- Ubuntu orange
  baby_pink = "#ff7555",
  pink = "#ff8c69",
  line = "#3e0128",
  green = "#38b44a", -- Ubuntu green
  vibrant_green = "#5bc85e",
  nord_blue = "#19b6ee", -- Ubuntu light blue
  blue = "#0e78c4",
  yellow = "#EFB73E",
  sun = "#f5cc6b",
  purple = "#7b5ea7",
  dark_purple = "#a07bc5",
  teal = "#35979c",
  orange = "#E95420",
  cyan = "#19b6ee",
  statusline_bg = "#330122",
  lightbg = "#4a0230",
  pmenu_bg = "#E95420",
  folder_bg = "#19b6ee",
}

M.base_16 = {
  base00 = "#2C001E",
  base01 = "#380126",
  base02 = "#48022f",
  base03 = "#660440",
  base04 = "#b07090",
  base05 = "#F2F2F2",
  base06 = "#f7f7f7",
  base07 = "#ffffff",
  base08 = "#E95420", -- orange (errors, keywords)
  base09 = "#EFB73E", -- yellow
  base0A = "#f5cc6b",
  base0B = "#38b44a", -- green
  base0C = "#19b6ee", -- cyan
  base0D = "#0e78c4", -- blue
  base0E = "#a07bc5", -- purple
  base0F = "#ff7555",
}

M.type = "dark"

M = require("base46").override_theme(M, "ubuntu")

return M
