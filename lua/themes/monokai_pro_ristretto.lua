-- Monokai Pro Ristretto filter
local M = {}

M.base_30 = {
  white        = "#fff1f3",
  darker_black = "#191515",
  black        = "#2c2525",
  black2       = "#211c1c",
  one_bg       = "#403838",
  one_bg2      = "#5b5353",
  one_bg3      = "#72696a",
  grey         = "#72696a",
  grey_fg      = "#948a8b",
  grey_fg2     = "#c3b7b8",
  light_grey   = "#c3b7b8",
  red          = "#fd6883",
  baby_pink    = "#ff8aa0",
  pink         = "#fd6883",
  line         = "#403838",
  green        = "#adda78",
  vibrant_green = "#bfe88c",
  nord_blue    = "#85dacc",
  blue         = "#85dacc",
  yellow       = "#f9cc6c",
  sun          = "#fcd988",
  purple       = "#a8a9eb",
  dark_purple  = "#c0c2ff",
  teal         = "#85dacc",
  orange       = "#f38d70",
  cyan         = "#85dacc",
  statusline_bg = "#211c1c",
  lightbg      = "#403838",
  pmenu_bg     = "#a8a9eb",
  folder_bg    = "#85dacc",
}

M.base_16 = {
  base00 = "#2c2525",
  base01 = "#403838",
  base02 = "#5b5353",
  base03 = "#72696a",
  base04 = "#948a8b",
  base05 = "#fff1f3",
  base06 = "#fff1f3",
  base07 = "#ffffff",
  base08 = "#fd6883",
  base09 = "#f38d70",
  base0A = "#f9cc6c",
  base0B = "#adda78",
  base0C = "#85dacc",
  base0D = "#85dacc",
  base0E = "#a8a9eb",
  base0F = "#f38d70",
}

M.type = "dark"
M = require("base46").override_theme(M, "monokai_pro_ristretto")
return M
