-- Bearded Aquarelle Cymbidium — ported from beardedbear.beardedtheme VS Code
local M = {}

M.base_30 = {
  white          = "#ded8dc",
  darker_black   = "#242026",
  black          = "#2c252a",
  black2         = "#322b30",
  one_bg         = "#3a3338",
  one_bg2        = "#4a4248",
  one_bg3        = "#5a5158",
  grey           = "#70606c",
  grey_fg        = "#70606c",
  grey_fg2       = "#9a8a96",
  light_grey     = "#c6bdc4",
  red            = "#eca099",
  baby_pink      = "#f3aabc",
  pink           = "#edc1ea",
  line           = "#da6e6c0f",
  green          = "#c3e5a1",
  vibrant_green  = "#d1e796",
  nord_blue      = "#afd9ec",
  blue           = "#afd9ec",
  yellow         = "#f3e1ac",
  sun            = "#f3e1ac",
  purple         = "#bcb1f1",
  dark_purple    = "#a59ad9",
  teal           = "#a9edd9",
  orange         = "#f0bba2",
  cyan           = "#a9edd9",
  statusline_bg  = "#242026",
  lightbg        = "#3a3338",
  pmenu_bg       = "#bcb1f1",
  folder_bg      = "#afd9ec",
}

M.base_16 = {
  base00 = "#2c252a",
  base01 = "#3a3338",
  base02 = "#4a4248",
  base03 = "#5a5158",
  base04 = "#70606c",
  base05 = "#ded8dc",
  base06 = "#ded8dc",
  base07 = "#ffffff",
  base08 = "#f0bba2",
  base09 = "#eca099",
  base0A = "#a9edd9",
  base0B = "#c3e5a1",
  base0C = "#d1e796",
  base0D = "#afd9ec",
  base0E = "#f3e1ac",
  base0F = "#bcb1f1",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.baby_pink },
    ["@keyword.function"] = { fg = M.base_30.teal },
    ["@keyword.return"] = { fg = M.base_30.yellow },
    ["@keyword.conditional"] = { fg = M.base_30.yellow },
    ["@keyword.storage"] = { fg = M.base_30.teal },
    ["@keyword.repeat"] = { fg = M.base_30.yellow },
    ["@type"] = { fg = M.base_30.purple },
    ["@type.builtin"] = { fg = M.base_30.purple },
    ["@variable.parameter"] = { fg = M.base_30.pink },
    ["@boolean"] = { fg = M.base_30.red },
    ["@constant.builtin"] = { fg = M.base_30.red },
    ["@tag"] = { fg = M.base_30.red },
    ["@tag.attribute"] = { fg = M.base_30.baby_pink },
    ["@operator"] = { fg = M.base_30.light_grey },
    ["@property"] = { fg = M.base_30.orange },
  },
  syntax = {
    Boolean = { fg = M.base_30.red },
    Type = { fg = M.base_30.purple },
    StorageClass = { fg = M.base_30.teal },
    Function = { fg = M.base_30.nord_blue },
    String = { fg = M.base_30.green },
    Constant = { fg = M.base_30.red },
    Keyword = { fg = M.base_30.yellow },
    Conditional = { fg = M.base_30.yellow },
    Tag = { fg = M.base_30.red },
  },
}

M.type = "dark"
M = require("base46").override_theme(M, "bearded_aquarelle_cymbidium")
return M
