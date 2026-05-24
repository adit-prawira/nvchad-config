-- Bearded Aquarelle Hydrangea — ported from beardedbear.beardedtheme VS Code
local M = {}

M.base_30 = {
  white          = "#dadde9",
  darker_black   = "#1c1f32",
  black          = "#22273c",
  black2         = "#282d44",
  one_bg         = "#30354c",
  one_bg2        = "#3e435a",
  one_bg3        = "#4e536a",
  grey           = "#515d8c",
  grey_fg        = "#515d8c",
  grey_fg2       = "#7280a0",
  light_grey     = "#b9bfd7",
  red            = "#eca099",
  baby_pink      = "#f3aabc",
  pink           = "#edc1ea",
  line           = "#6394f10f",
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
  statusline_bg  = "#1c1f32",
  lightbg        = "#30354c",
  pmenu_bg       = "#bcb1f1",
  folder_bg      = "#afd9ec",
}

M.base_16 = {
  base00 = "#22273c",
  base01 = "#30354c",
  base02 = "#3e435a",
  base03 = "#4e536a",
  base04 = "#515d8c",
  base05 = "#dadde9",
  base06 = "#dadde9",
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
M = require("base46").override_theme(M, "bearded_aquarelle_hydrangea")
return M
