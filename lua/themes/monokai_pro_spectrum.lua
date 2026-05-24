-- Monokai Pro Spectrum filter
local M = {}

M.base_30 = {
  white        = "#f7f1ff",
  darker_black = "#131313",
  black        = "#222222",
  black2       = "#191919",
  one_bg       = "#363537",
  one_bg2      = "#525053",
  one_bg3      = "#69676c",
  grey         = "#69676c",
  grey_fg      = "#8b888f",
  grey_fg2     = "#bab6c0",
  light_grey   = "#bab6c0",
  red          = "#fc618d",
  baby_pink    = "#ff86aa",
  pink         = "#fc618d",
  line         = "#363537",
  green        = "#7bd88f",
  vibrant_green = "#90e8a4",
  nord_blue    = "#5ad4e6",
  blue         = "#5ad4e6",
  yellow       = "#fce566",
  sun          = "#fdef84",
  purple       = "#948ae3",
  dark_purple  = "#b0a5ff",
  teal         = "#5ad4e6",
  orange       = "#fd9353",
  cyan         = "#5ad4e6",
  statusline_bg = "#191919",
  lightbg      = "#363537",
  pmenu_bg     = "#948ae3",
  folder_bg    = "#5ad4e6",
}

M.base_16 = {
  base00 = "#222222",
  base01 = "#363537",
  base02 = "#525053",
  base03 = "#69676c",
  base04 = "#8b888f",
  base05 = "#f7f1ff",
  base06 = "#f7f1ff",
  base07 = "#ffffff",
  base08 = "#fc618d",
  base09 = "#fd9353",
  base0A = "#fce566",
  base0B = "#7bd88f",
  base0C = "#5ad4e6",
  base0D = "#5ad4e6",
  base0E = "#948ae3",
  base0F = "#fd9353",
}

M.type = "dark"
M = require("base46").override_theme(M, "monokai_pro_spectrum")
return M
