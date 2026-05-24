-- Monokai Pro Machine filter
local M = {}

M.base_30 = {
  white        = "#f2fffc",
  darker_black = "#161b1e",
  black        = "#273136",
  black2       = "#1d2528",
  one_bg       = "#3a4449",
  one_bg2      = "#545f62",
  one_bg3      = "#6b7678",
  grey         = "#6b7678",
  grey_fg      = "#8b9798",
  grey_fg2     = "#b8c4c3",
  light_grey   = "#b8c4c3",
  red          = "#ff6d7e",
  baby_pink    = "#ff8f9e",
  pink         = "#ff6d7e",
  line         = "#3a4449",
  green        = "#a2e57b",
  vibrant_green = "#b4f28e",
  nord_blue    = "#7cd5f1",
  blue         = "#7cd5f1",
  yellow       = "#ffed72",
  sun          = "#fff58a",
  purple       = "#baa0f8",
  dark_purple  = "#cdb8ff",
  teal         = "#7cd5f1",
  orange       = "#ffb270",
  cyan         = "#7cd5f1",
  statusline_bg = "#1d2528",
  lightbg      = "#3a4449",
  pmenu_bg     = "#baa0f8",
  folder_bg    = "#7cd5f1",
}

M.base_16 = {
  base00 = "#273136",
  base01 = "#3a4449",
  base02 = "#545f62",
  base03 = "#6b7678",
  base04 = "#8b9798",
  base05 = "#f2fffc",
  base06 = "#f2fffc",
  base07 = "#ffffff",
  base08 = "#ff6d7e",
  base09 = "#ffb270",
  base0A = "#ffed72",
  base0B = "#a2e57b",
  base0C = "#7cd5f1",
  base0D = "#7cd5f1",
  base0E = "#baa0f8",
  base0F = "#ffb270",
}

M.type = "dark"
M = require("base46").override_theme(M, "monokai_pro_machine")
return M
