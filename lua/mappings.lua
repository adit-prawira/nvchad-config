require "nvchad.mappings"

-- add yours here

vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "jk", "<ESC>")
-- Search Operations Keymaps
vim.keymap.set("n", "<space>ff", function()
  require("telescope.builtin").find_files({
    hidden = true,
  })
end, {desc = "Quick File Access"})


vim.keymap.set("n", "<space>ft", ":Telescope themes<CR>", {desc = "Select themes"})

vim.keymap.set("n", "<space>fg", function()
  require("telescope.builtin").live_grep()
end, {desc = "Global Search"})

vim.keymap.set("n", "<space>fr", require("telescope.builtin").find_files, {desc = "Find File With Preview"})
vim.keymap.set("n", "<leader>fs", function()
    vim.lsp.buf.code_action()
end, { desc = "Fill struct / code actions" })
vim.keymap.set("n", "<space>ef", function()
  require("telescope.builtin").find_files {
    cwd = vim.fn.stdpath("config")
  }
end, {desc = "Find NVIM Lua Config Files"})

vim.keymap.set("n", "<space>fi", require("telescope.builtin").current_buffer_fuzzy_find, {desc = "Find Keyword in Current File"})
-- Select Code Operations
vim.keymap.set("n", "<space>a", "ggVG", {desc = "Select All"})

-- Fold Code Keymaps
-- mappings.lua or keymaps.lua
-- Select Code Operations
vim.keymap.set("n", "<space>a", "ggVG", { desc = "Select All" })

-- Indent
vim.keymap.set("v", "<Tab>", ">gv",   { desc = "Indent in" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Indent out" })

-- Fold
vim.keymap.set("n", "<space>zz", "za", { desc = "Toggle fold" })
vim.keymap.set("n", "<space>zm", "zM", { desc = "Fold all" })
vim.keymap.set("n", "<space>zr", "zR", { desc = "Unfold all" })
vim.keymap.set("v", "<space>zf", "zf", { desc = "Fold selection" })
vim.keymap.set("v", "<space>zo", "zo", { desc = "Unfold selection" })
vim.keymap.set("n", "<space>zl", function()
    local level = vim.fn.input("Fold level: ")
    if level ~= "" then
        vim.cmd("set foldlevel=" .. level)
    end
end, { desc = "Set fold level" })      -- Toggle floating terminal
vim.keymap.set({ "n", "t" }, "<space>trf", function()
  require("nvchad.term").toggle { pos = "float", id = "float-terminal", float_opts = {
    width = 0.9,    -- Increase this (e.g., 0.9 = 90% of screen)
    height = 0.7,
    row = 0.05,
    col = 0.05,     -- Adjust this to keep it centered (e.g., (1 - width) / 2)
  }}
end, { desc = "Terminal toggle floating" })

vim.keymap.set({"n", "t"}, "<space>trh", function()
    require("nvchad.term").toggle { pos = "sp", id = "horizontal-terminal"}
end, {desc = "Terminal toggle horizontal"})

vim.keymap.set({"n", "t"}, "<space>trv", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vertical-terminal", size = 0.4}
end, {desc = "Terminal toggle vertical"})

vim.keymap.set("n", "<C-d>", "<Plug>(VM-Find-Under)", { desc = "Add cursor on word" })
vim.keymap.set("v", "<C-d>", "<Plug>(VM-Find-Subword-Under)", { desc = "Add cursor on selection" })

-- Background color picker — only patches bg highlight groups, theme syntax colors stay intact
vim.keymap.set("n", "<space>tb", function()
  local bg = require "configs.bg"

  local presets = {
    { "Reset (theme default)",   nil       },
    { "Pure black   #000000",    "#000000" },
    { "Near black   #0d0d0d",    "#0d0d0d" },
    { "Catppuccin   #1e1e2e",    "#1e1e2e" },
    { "Tokyo Night  #1a1b26",    "#1a1b26" },
    { "Gruvbox dark #282828",    "#282828" },
    { "Slate        #222436",    "#222436" },
    { "Ubuntu       #2c001e",    "#2c001e" },
    { "Monokai Pro        #2d2a2e",    "#2d2a2e" },
    { "Monokai Classic    #272822",    "#272822" },
    { "Monokai Octagon    #282a3a",    "#282a3a" },
    { "Monokai Machine    #273136",    "#273136" },
    { "Monokai Ristretto  #2c2525",    "#2c2525" },
    { "Monokai Spectrum   #222222",    "#222222" },
    { "Custom hex…",                   "custom"  },
  }

  vim.ui.select(vim.tbl_map(function(p) return p[1] end, presets), { prompt = "Background color" }, function(_, idx)
    if not idx then return end
    local value = presets[idx][2]
    if value == nil then
      bg.reset()
    elseif value == "custom" then
      vim.ui.input({ prompt = "Hex (#rrggbb): " }, function(input)
        if input and input:match "^#%x%x%x%x%x%x$" then
          bg.apply(input)
        else
          vim.notify("Invalid hex color", vim.log.levels.WARN)
        end
      end)
    else
      bg.apply(value)
    end
  end)
end, { desc = "Set background color" })

-- Move lines up/down (normal: single line, visual: selection)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Resize splits with Ctrl+Shift+arrows
vim.keymap.set("n", "<C-S-Up>", "<C-w>+", { desc = "Expand split height" })
vim.keymap.set("n", "<C-S-Down>", "<C-w>-", { desc = "Shrink split height" })
vim.keymap.set("n", "<C-S-Left>", function()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_set_width(win, vim.api.nvim_win_get_width(win) - 2)
end, { desc = "Shrink split width" })
vim.keymap.set("n", "<C-S-Right>", function()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_set_width(win, vim.api.nvim_win_get_width(win) + 2)
end, { desc = "Expand split width" })

