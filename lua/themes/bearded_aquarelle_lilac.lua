-- Bearded Aquarelle Lilac — ported from beardedbear.beardedtheme VS Code
local M = {}

M.base_30 = {
  white          = "#d9d9e3",
  darker_black   = "#1f1e2b",
  black          = "#252433",
  black2         = "#2b2a3b",
  one_bg         = "#333243",
  one_bg2        = "#414051",
  one_bg3        = "#515060",
  grey           = "#5c5a7d",
  grey_fg        = "#5c5a7d",
  grey_fg2       = "#7a7899",
  light_grey     = "#bcbbce",
  red            = "#eca099",
  baby_pink      = "#f3aabc",
  pink           = "#edc1ea",
  line           = "#9587ff0f",
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
  statusline_bg  = "#1f1e2b",
  lightbg        = "#333243",
  pmenu_bg       = "#bcb1f1",
  folder_bg      = "#afd9ec",
}

M.base_16 = {
  base00 = "#252433",
  base01 = "#333243",
  base02 = "#414051",
  base03 = "#515060",
  base04 = "#5c5a7d",
  base05 = "#d9d9e3",
  base06 = "#d9d9e3",
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
M = require("base46").override_theme(M, "bearded_aquarelle_lilac")
return M
