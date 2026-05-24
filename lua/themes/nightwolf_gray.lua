-- Night Wolf Gray — ported from mao-santaella-rs/NightWolfTheme VS Code gray variant
local M = {}

M.base_30 = {
  white          = "#cecece",
  darker_black   = "#1f1f1f",
  black          = "#252525",
  black2         = "#2d2d2d",
  one_bg         = "#373737",
  one_bg2        = "#454545",
  one_bg3        = "#595959",
  grey           = "#757575",
  grey_fg        = "#647882",
  grey_fg2       = "#9b9b9b",
  light_grey     = "#cecece",
  red            = "#ff7878",
  baby_pink      = "#ff9999",
  pink           = "#ff50ff",
  line           = "#2d2d2d",
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
  statusline_bg  = "#1f1f1f",
  lightbg        = "#373737",
  pmenu_bg       = "#dc8cff",
  folder_bg      = "#00b1ff",
}

M.base_16 = {
  base00 = "#252525",
  base01 = "#373737",
  base02 = "#454545",
  base03 = "#595959",
  base04 = "#757575",
  base05 = "#cecece",
  base06 = "#cecece",
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
M = require("base46").override_theme(M, "nightwolf_gray")
return M
