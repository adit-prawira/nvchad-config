require "nvchad.mappings"

-- add yours here

vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "jk", "<ESC>")
-- Search Operations Keymaps
vim.keymap.set("n", "<space>ff", function()
  require("telescope.builtin").find_files({
    previewer = false,
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

