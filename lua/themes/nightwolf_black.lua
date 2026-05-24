-- Night Wolf Black — ported from mao-santaella-rs/NightWolfTheme VS Code black variant
local M = {}

M.base_30 = {
  white          = "#c8c8c8",
  darker_black   = "#0a0a0a",
  black          = "#000000",
  black2         = "#141414",
  one_bg         = "#282828",
  one_bg2        = "#3c3c3c",
  one_bg3        = "#505050",
  grey           = "#787878",
  grey_fg        = "#647882",
  grey_fg2       = "#969696",
  light_grey     = "#c8c8c8",
  red            = "#ff7878",
  baby_pink      = "#ff9999",
  pink           = "#ff50ff",
  line           = "#141414",
  green          = "#aae682",
  vibrant_green  = "#bbee96",
  nord_blue      = "#9696ff",
  blue           = "#00b1ff",
  yellow         = "#ffdc96",
  sun            = "#ffe8b8",
  purple         = "#dc8cff",
  dark_purple    = "#b06cff",
  teal           = "#00dcdc",
  orange         = "#ffb482",
  cyan           = "#00dcdc",
  statusline_bg  = "#0a0a0a",
  lightbg        = "#282828",
  pmenu_bg       = "#dc8cff",
  folder_bg      = "#00b1ff",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#282828",
  base02 = "#3c3c3c",
  base03 = "#505050",
  base04 = "#787878",
  base05 = "#c8c8c8",
  base06 = "#c8c8c8",
  base07 = "#ffffff",
  base08 = "#ffdc96",
  base09 = "#ffb482",
  base0A = "#00b1ff",
  base0B = "#aae682",
  base0C = "#00dcdc",
  base0D = "#00dcdc",
  base0E = "#dc8cff",
  base0F = "#ff7878",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.yellow },
    ["@variable.builtin"] = { fg = M.base_30.red },
    ["@keyword.return"] = { fg = M.base_30.nord_blue },
    ["@keyword.function"] = { fg = M.base_30.blue },
    ["@keyword.class"] = { fg = M.base_30.blue },
    ["@keyword.storage"] = { fg = M.base_30.blue },
    ["@keyword.repeat"] = { fg = M.base_30.purple },
    ["@boolean"] = { fg = M.base_30.red },
    ["@constant.builtin"] = { fg = M.base_30.red },
    ["@operator"] = { fg = M.base_30.red },
    ["@tag"] = { fg = M.base_30.red },
    ["@tag.attribute"] = { fg = M.base_30.nord_blue },
    ["@string.regex"] = { fg = M.base_30.sun },
  },
  syntax = {
    Boolean = { fg = M.base_30.red },
    Operator = { fg = M.base_30.red },
    Tag = { fg = M.base_30.red },
  },
}

M.type = "dark"
M = require("base46").override_theme(M, "nightwolf_black")
return M
