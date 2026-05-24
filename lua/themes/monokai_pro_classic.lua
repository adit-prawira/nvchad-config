-- Monokai Pro Classic filter — original Monokai palette
local M = {}

M.base_30 = {
  white        = "#fdfff1",
  darker_black = "#161613",
  black        = "#272822",
  black2       = "#1d1e19",
  one_bg       = "#3b3c35",
  one_bg2      = "#57584f",
  one_bg3      = "#6e7066",
  grey         = "#6e7066",
  grey_fg      = "#919288",
  grey_fg2     = "#c0c1b5",
  light_grey   = "#c0c1b5",
  red          = "#f92672",
  baby_pink    = "#ff6a97",
  pink         = "#f92672",
  line         = "#3b3c35",
  green        = "#a6e22e",
  vibrant_green = "#b8f040",
  nord_blue    = "#66d9ef",
  blue         = "#66d9ef",
  yellow       = "#e6db74",
  sun          = "#f5e98a",
  purple       = "#ae81ff",
  dark_purple  = "#c49dff",
  teal         = "#66d9ef",
  orange       = "#fd971f",
  cyan         = "#66d9ef",
  statusline_bg = "#1d1e19",
  lightbg      = "#3b3c35",
  pmenu_bg     = "#ae81ff",
  folder_bg    = "#66d9ef",
}

M.base_16 = {
  base00 = "#272822",
  base01 = "#3b3c35",
  base02 = "#57584f",
  base03 = "#6e7066",
  base04 = "#919288",
  base05 = "#fdfff1",
  base06 = "#fdfff1",
  base07 = "#ffffff",
  base08 = "#f92672",
  base09 = "#fd971f",
  base0A = "#e6db74",
  base0B = "#a6e22e",
  base0C = "#66d9ef",
  base0D = "#66d9ef",
  base0E = "#ae81ff",
  base0F = "#fd971f",
}

M.type = "dark"
M = require("base46").override_theme(M, "monokai_pro_classic")
return M
