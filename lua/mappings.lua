require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- Fast operate
map("i", "jk", "<ESC>")
map("n", "<leader>j", "10j")
map("n", "<leader>k", "10k")
map("n", "<CR>", "o<ESC>")

-- control tabs
map("n", "<S-h>", function()
    require("nvchad.tabufline").prev()
end)
map("n", "<S-l>", function()
    require("nvchad.tabufline").next()
end)
map("n", "<A-[>", function()
    require("nvchad.tabufline").move_buf(-1)
end)
map("n", "<A-]>", function()
    require("nvchad.tabufline").move_buf(1)
end)

-- copy into special register and paste it from the register
map("n", "pp", "\"+p")
map("n", "dd", "\"ddd")
map("n", "pd", "\"dp")
map("n", "C", "\"cC")
map("n", "pc", "\"cp")

-- Move code
map("v", ">", ">gv")
map("v", "<", "<gv")


-- fast buffer change 1~9 tab
for i=1,9 do
  map("n", string.format("<leader>%s", i), function ()
     vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end, { desc = string.format("change buffer to %s", i)})
end
