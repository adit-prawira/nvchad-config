-- Monokai Pro (default filter) — exact colors from loctvl842/monokai-pro.nvim
local M = {}

M.base_30 = {
  white        = "#fcfcfa",
  darker_black = "#19181a",
  black        = "#2d2a2e",
  black2       = "#221f22",
  one_bg       = "#403e41",
  one_bg2      = "#5b595c",
  one_bg3      = "#727072",
  grey         = "#727072",
  grey_fg      = "#939293",
  grey_fg2     = "#c1c0c0",
  light_grey   = "#c1c0c0",
  red          = "#ff6188",
  baby_pink    = "#ff8aa8",
  pink         = "#ff6188",
  line         = "#403e41",
  green        = "#a9dc76",
  vibrant_green = "#bce88a",
  nord_blue    = "#78dce8",
  blue         = "#78dce8",
  yellow       = "#ffd866",
  sun          = "#ffe999",
  purple       = "#ab9df2",
  dark_purple  = "#c2b3f7",
  teal         = "#78dce8",
  orange       = "#fc9867",
  cyan         = "#78dce8",
  statusline_bg = "#221f22",
  lightbg      = "#403e41",
  pmenu_bg     = "#ab9df2",
  folder_bg    = "#78dce8",
}

M.base_16 = {
  base00 = "#2d2a2e",
  base01 = "#403e41",
  base02 = "#5b595c",
  base03 = "#727072",
  base04 = "#939293",
  base05 = "#fcfcfa",
  base06 = "#fcfcfa",
  base07 = "#ffffff",
  base08 = "#ff6188",
  base09 = "#fc9867",
  base0A = "#ffd866",
  base0B = "#a9dc76",
  base0C = "#78dce8",
  base0D = "#78dce8",
  base0E = "#ab9df2",
  base0F = "#fc9867",
}

M.type = "dark"
M = require("base46").override_theme(M, "monokai_pro")
return M
