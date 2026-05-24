-- Monokai Pro Octagon filter
local M = {}

M.base_30 = {
  white        = "#eaf2f1",
  darker_black = "#161821",
  black        = "#282a3a",
  black2       = "#1e1f2b",
  one_bg       = "#3a3d4b",
  one_bg2      = "#535763",
  one_bg3      = "#696d77",
  grey         = "#696d77",
  grey_fg      = "#888d94",
  grey_fg2     = "#b2b9bd",
  light_grey   = "#b2b9bd",
  red          = "#ff657a",
  baby_pink    = "#ff8a9a",
  pink         = "#ff657a",
  line         = "#3a3d4b",
  green        = "#bad761",
  vibrant_green = "#cae875",
  nord_blue    = "#9cd1bb",
  blue         = "#9cd1bb",
  yellow       = "#ffd76d",
  sun          = "#ffe88a",
  purple       = "#c39ac9",
  dark_purple  = "#d8b3de",
  teal         = "#9cd1bb",
  orange       = "#ff9b5e",
  cyan         = "#9cd1bb",
  statusline_bg = "#1e1f2b",
  lightbg      = "#3a3d4b",
  pmenu_bg     = "#c39ac9",
  folder_bg    = "#9cd1bb",
}

M.base_16 = {
  base00 = "#282a3a",
  base01 = "#3a3d4b",
  base02 = "#535763",
  base03 = "#696d77",
  base04 = "#888d94",
  base05 = "#eaf2f1",
  base06 = "#eaf2f1",
  base07 = "#ffffff",
  base08 = "#ff657a",
  base09 = "#ff9b5e",
  base0A = "#ffd76d",
  base0B = "#bad761",
  base0C = "#9cd1bb",
  base0D = "#9cd1bb",
  base0E = "#c39ac9",
  base0F = "#ff9b5e",
}

M.type = "dark"
M = require("base46").override_theme(M, "monokai_pro_octagon")
return M
