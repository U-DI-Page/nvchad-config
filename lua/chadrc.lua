-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "everforest",
  transparency = true,
  nvdash = {
    load_on_startup = true,
  },

  -- telescope = {
  --     extensions_list = { "xray23" },
  -- }
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
